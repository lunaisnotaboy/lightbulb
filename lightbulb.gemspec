# frozen_string_literal: true

require_relative 'lib/lightbulb/version'

Gem::Specification.new do |spec|
  spec.name = 'lightbulb'
  spec.version = Lightbulb::VERSION
  spec.authors = ['lunaisnotaboy']
  spec.email = ['her@mint.lgbt']

  spec.summary = 'An implementation of RPG Maker XP\'s Ruby Game Scripting System'
  spec.homepage = 'https://github.com/lunaisnotaboy/lightbulb'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 2.7.0'

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/lunaisnotaboy/lightbulb'
  spec.metadata['changelog_uri'] = 'https://github.com/lunaisnotaboy/lightbulb/blob/main/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.extensions = ['ext/lightbulb/extconf.rb']

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
end
