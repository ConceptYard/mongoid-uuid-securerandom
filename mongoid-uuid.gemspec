# encoding: utf-8
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'mongoid/uuid/version'

Gem::Specification.new do |s|
  s.name = 'mongoid-uuid'
  s.version = Mongoid::Uuid::VERSION
  s.platform = Gem::Platform::RUBY
  s.authors = ['Yury Druzkov']
  s.email = ['bad1lamer@gmail.com']
  s.homepage = 'http://github.com/badlamer/mongoid-uuid'
  s.summary = 'Uuid fields for mongoid'
  s.description = ''
  s.license = 'MIT'

  s.required_ruby_version = '>= 1.9'
  s.required_rubygems_version = '>= 1.3.6'
  s.rubyforge_project = 'mongoid-uuid'

  s.add_runtime_dependency 'uuid', '~> 2.3'
  s.add_dependency 'yard'
  s.add_dependency 'rake'
  s.add_dependency 'mongoid', '>= 3.0'
  s.add_dependency 'rspec', '~> 3.0'
  s.add_dependency 'mongoid-rspec', '~> 2.0.0.rc1'


  s.files = Dir.glob('lib/**/*')# + %w(CHANGELOG.md LICENSE README.md
  s.test_files = Dir.glob('spec/**/*')
  s.require_path = 'lib'
end
