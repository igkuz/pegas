require "bundler/gem_tasks"
require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs = ["test"]
  t.warning = true
  t.verbose = true
  t.test_files = FileList['test/lib/*_test.rb']
end

task default: :test
