require 'rake'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask::new(:spec)
task :spec => :spec
task :default => :spec
