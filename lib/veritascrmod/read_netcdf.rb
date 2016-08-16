# This module reads data from the new diagnostics output file
# <run_name>.out.nc.
#
# It defines a new
# generic reader function which can read any variable in the new
# netcdf file using a standard set of index constraints
#

class CodeRunner::Veritas

class NetcdfSmartReader
  def initialize(file)
    @file = file
  end
  def dimensions(varname)
    #p 'varname', varname
    raise "Unknown variable #{varname}" unless @file.var(varname)
    @file.var(varname).dims
  end
  def read_variable(varname, options)
    #start = get_start(dims, options)
    dims = dimensions(varname)
    narray = @file.var(varname).get('start'=>starts(dims, options), 'end'=>ends(dims, options))
    if options[:modify_variable]
      myhsh = dims.inject({}){|hsh, dim|
        opts = options.dup
        opts[:modify_variable] = nil
        dimval = read_variable(dimension_variable_name(dim.name), opts)
        hsh[dim.name] = dimval
        hsh
      }
      narray = options[:modify_variable].call(varname, narray, myhsh)
    elsif options[:invert_matrix]
      narray = GSL::Linalg::LU.invert(narray.to_gm_view).to_na_ref
    end
    shape = narray.shape
    shape.delete_if{|i| i==1}
    #p 'shape', shape; STDIN.gets
    narray.reshape!(*shape)
    narray

  end
  def starts(dims, options)
    dims.map{|d| dim_start(d.name, options)}
  end
  def dim_start(name, options)
    sym = name.to_sym
    if i=options[sym + :_index] or i = options[sym]
      return i-1
    elsif i=options[sym + :_element]
      return i
    elsif i=options[sym + :min]
      return i
    else
      return 0
    end
  end
  def ends(dims, options)
    dims.map{|d| dim_end(d.name, options)}
  end
  def dim_end(name, options)
    sym = name.to_sym
    if i=options[sym + :_index] or i=options[sym]
      return i-1
    elsif i=options[sym + :_element]
      return i
    elsif i=options[sym + :max]
      return i
    else
      return -1
    end
  end
  def file_dimensions
    @file.dims.map{|d| d.name}
  end

  def axiskit(variable, options)
    case variable
    when *file_dimensions
      return GraphKit::AxisKit.autocreate(data: GSL::Vector.linspace(1, sz=@file.dim(variable).length, sz), title: variable)
    end
    GraphKit::AxisKit.autocreate(data: read_variable(variable, options), units: @file.var(variable).att('units').get, title: @file.var(variable).att('description').get.sub(/(,|summed|average).*$/, '').sub(/[vV]alues of (the )?/, '').sub(/ coordinate/, '').sub(/.*rho.*The definition.*/, 'rho'))
  end
  def dimension_variable_name(n)
    case n
    when *file_dimensions
      n
    else
      raise "Unknown dimension #{n}"
    end
  end
  def check_no_r(non_flat_dims)
    raise "Please specify the r index for real or imaginary" if non_flat_dims.include? @file.dim('r')
  end
  def graphkit(variable, options)
    non_flat_dims=dimensions(variable).find_all{|dim| dim_start(dim.name, options) != dim_end(dim.name, options) and dim.length != 1}
    check_no_r(non_flat_dims)
    axiskits = non_flat_dims.map{|dim| dimvar = dimension_variable_name(dim.name); axiskit(dimvar, options)} + [axiskit(variable, options)]
    hash = {}
    axes = [:x, :y, :z, :f]
    axiskits.each_with_index{|ax, i| hash[axes[i]] = ax}
    kit = GraphKit.autocreate(hash)
    opts = options.dup
    opts.delete(:modify_variable)
    opts.delete(:graphkit_name)
    #kit.data[0].title += " with options: " + opts.to_s
    kit.data[0].title += " " + opts.to_s.gsub(/_(index|element)/, '')
    kit.data[0].gp.with = "lp"
    if kit.zlabel
      kit.zlabel = "'#{kit.zlabel}' rotate by 90"
      #kit.zlabel = nil
    end
    kit
  end
end # class NetcdfSmartReader


def netcdf_smart_reader
end

class SmartGraphKitError < StandardError
end

def smart_graphkit(options)
  case options[:command]
  when :help
    "A smart graphkit is a direct plot of a given variable from the new netcdf file. The name of the graphkit is the name of the variable prefixed by 'cdf_'. To plot, for example, the heat flux vs time, you would give the graph name cdf_heat_flux_tot. You can use index specifiers in the the options; for example, to plot the potential as a function of kx and ky for a given time index, you would use the graph name cdf_phi2_by_mode, and the options {t_index: n}. To plot the potential as function of kx for a given ky and time would use the options {t_index, n, Y_index: m}. For each dimension you can specify the index, or a minium and/or maximum."
  when :options
    [:nmat_index, :t_index, :tspec_index, :iter_index]
  else
    case options[:graphkit_name]
    when /_vs_/
      kits = options[:graphkit_name].sub(/^nc_/, '').split(/_vs_/).map{|n| netcdf_smart_reader.graphkit(n, options)}
      kit = kits[-1]
      raise SmartGraphKitError.new("Number of axes does not match number of variables") if kits.size != kit.naxes
      for i in 0...kit.data.size
        if kit.naxes > 1
          kit.data[i].x = kits[0].data[i].y
        end
        if kit.naxes > 2
          kit.data[i].x = kits[0].data[i].z
          kit.data[i].y = kits[1].data[i].z
        end
      end
      kit.autocreate
      kit
    else
      openncfile{|f| NetcdfSmartReader.new(f).graphkit(options[:graphkit_name].sub(/^nc_/, ''), options)}
    end
  end
end



end
