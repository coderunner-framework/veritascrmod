
require 'helper'
require 'minitest/autorun'

require 'rbconfig'
$ruby_command = "#{RbConfig::CONFIG['bindir']}/#{RbConfig::CONFIG['ruby_install_name']}"
$coderunner_command = "#{$ruby_command}  -I lib/ lib/coderunner.rb"

class TestVeritas < MiniTest::Test
  def setup
    #puts "setup"; STDIN.gets
    #cleanup if FileTest.exist?('test/test_results')
		FileUtils.makedirs('test/test_results/v')
    @runner = CodeRunner.fetch_runner(Y: 'test/test_results', C: 'veritas', X: '/dev/null')
  end
  def cleanup
    FileUtils.rm_r('test/test_results')
    #FileUtils.rm('test/ifspppl/.code_runner_script_defaults.rb')
    #FileUtils.rm('test/ifspppl/.CODE_RUNNER_TEMP_RUN_LIST_CACHE')
    #FileUtils.rm('test/gs2_42982/pr08_jet_42982_1d.dat')
    #FileUtils.rm('test/gs2_42982/pr08_jet_42982_2d.dat')
		#FileUtils.rm_r('test/ifspppl/v')
  end
  def teardown
  end
  #def test_basics
    #assert_equal(@runner.run_class, CodeRunner::Veritas)
  #end
  def test_submit
    #@runner.run_class.make_new_defaults_file("rake_test", "test/test.in")
    #FileUtils.mv('rake_test_defaults.rb', 'test/test_results')
		#if ENV['VERITAS_EXEC']
      #CodeRunner.submit(Y: 'test/test_results', T: false, D: 'rake_test', n: '1', X: ENV['VERITAS_EXEC'], p: '{np_0: 16, np_1: 16}')
    #end
		base_hash = @runner.run_class.parse_input_file('test/test.in')
		test_hash = @runner.run_class.parse_input_file('test/test_results/v/id_1/v_np_0_16_np_1_16_id_1.in')
		assert_equal(base_hash, test_hash)
		CodeRunner.status(Y: 'test/test_results')
    #CodeRunner.plot_graph(Y: 'test/test_results', g: ['asquared'], G: [])
    #CodeRunner.plot_graph(Y: 'test/test_results', g: ['waveandparticles;{t:-1, particle: 0, log: true}'], G: [])
    #CodeRunner.plot_graph(Y: 'test/test_results', g: ['nc_asquared;{time:-1, particle: 1}'], G: [])
    #CodeRunner.plot_graph(Y: 'test/test_results', g: ['dist_fn;{t: 0, particle: 0}'], G: [], w: "self.live=true")
    CodeRunner.plot_graph(Y: 'test/test_results', g: ['vspace_dist_fn;{t: 0, particle: 0}'], G: [], w: "self.live=true")
    #cleanup if FileTest.exist?('test/test_results')
  end
end
