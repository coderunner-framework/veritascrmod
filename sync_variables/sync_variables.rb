require 'helper'

CodeRunner.setup_run_class('veritas')
#
###################################################################################
# Code to analyse the source code to look for new input variables... very imperfect
################################################################################

defaults_file = ENV['VERITAS_SOURCE'] + '/inputparameters/defaults.in'
raise "Could not find defaults_file #{defaults_file}" unless FileTest.exist? defaults_file
CodeRunner::Veritas.synchronise_variables_from_input_file(defaults_file)

