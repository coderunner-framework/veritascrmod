{:time=>
  {:description=>"",
   :should_include=>"true",
   :variables=>
    {:filewrite_freq=>
      {:should_include=>"true",
       :description=>
        "The larger this number, the more often output data is written to disk.",
       :help=>
        "The larger this number, the more often output data is written to disk.",
       :code_name=>:filewrite_freq,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer},
     :time=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:time,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :runtime=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:runtime,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :stepfreq=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:stepfreq,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :nregrid=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:nregrid,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer},
     :tfieldsonly=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:tfieldsonly,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float}}},
 :particles=>
  {:description=>"",
   :should_include=>"true",
   :variables=>
    {:npart=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:npart,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer}}},
 :particle=>
  {:description=>"",
   :should_include=>"true",
   :enumerator=>{:name=>:npart, :estimated_value=>5},
   :variables=>
    {:np=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:np,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer},
     :dp=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:dp,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :pmin=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:pmin,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :mass=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:mass,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>"This variable must be an number."}],
       :type=>:Integer},
     :charge=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:charge,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer},
     :dens=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:dens,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :pmin_fac=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:pmin_fac,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer},
     :idist_npars=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:idist_npars,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer},
     :idist_shape=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:idist_shape,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>"This variable must be a number."}],
       :type=>:Integer},
     :idist_func=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:idist_func,
       :must_pass=>
        [{:test=>"kind_of? String",
          :explanation=>"This variable must be a string."}],
       :type=>:String}}},
 :grid=>
  {:description=>"",
   :should_include=>"true",
   :variables=>
    {:nx=>
      {:should_include=>"true",
       :description=>"Number of gridpoints in the x spatial dimension.",
       :help=>"Number of gridpoints in the x spatial dimension.",
       :code_name=>:nx,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer},
     :minefficiency=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:minefficiency,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :dx=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:dx,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :k=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:k,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :cfl=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:cfl,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :sizeweight=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:sizeweight,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :prelength=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:prelength,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :postlength=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:postlength,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :r=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:r,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer},
     :lfinest=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:lfinest,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer},
     :loadbal=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:loadbal,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer},
     :quadraturedepth=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:quadraturedepth,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer},
     :refmasklower=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:refmasklower,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :refmaskupper=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:refmaskupper,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float}}},
 :output=>
  {:description=>"",
   :should_include=>"true",
   :variables=>
    {:rectangledata=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:rectangledata,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :charge_out=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:charge,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :energy=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:energy,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :potential=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:potential,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :efieldlong=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:efieldlong,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :efieldtrans=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:efieldtrans,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :bfieldtrans=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:bfieldtrans,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :afieldsq=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:afieldsq,
       :must_pass=>
        [{:test=>"kind_of? String and FORTRAN_BOOLS.include? self",
          :explanation=>
           "This variable must be a fortran boolean. (In Ruby this is represented as a string: e.g. '.true.')"}],
       :type=>:Fortran_Bool},
     :precision=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:precision,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer}}},
 :laser=>
  {:description=>"",
   :should_include=>"true",
   :variables=>
    {:a0=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:a0,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :laser_shape=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:laser_shape,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float},
     :lshape_npars=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:lshape_npars,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer},
     :laser_func=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:laser_func,
       :must_pass=>
        [{:test=>"kind_of? String",
          :explanation=>"This variable must be a string."}],
       :type=>:String},
     :lambda=>
      {:should_include=>"true",
       :description=>nil,
       :help=>nil,
       :code_name=>:lambda,
       :must_pass=>
        [{:test=>"kind_of? Numeric",
          :explanation=>
           "This variable must be a floating point number (an integer is also acceptable: it will be converted into a floating point number)."}],
       :type=>:Float}}}}
