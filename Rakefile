require 'rake/testtask'

if defined? Bundler
  Bundler::GemHelper.install_tasks
end

Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList['test/*test.rb']
  t.verbose = true
end

task :default => :test
