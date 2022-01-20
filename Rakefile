# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

require 'rubocop/rake_task'

RuboCop::RakeTask.new

require 'rake/extensiontask'

desc 'Builds the gem'
task build: :compile

Rake::ExtensionTask.new('lightbulb') do |ext|
  ext.lib_dir = 'lib/lightbulb'
end

task default: %i[clobber compile spec rubocop]
