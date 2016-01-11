# encoding: utf-8
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'mongoid/uuid/version'

Gem::Specification.new do |s|
  s.name = 'mongoid-uuid-securerandom'
  s.version = Mongoid::Uuid::VERSION
  s.platform = Gem::Platform::RUBY
  s.authors = ['Warren Guy','Yury Druzkov']
  s.email = ['warren@guy.net.au']
  s.homepage = 'http://github.com/warrenguy/mongoid-uuid-securerandom'
  s.summary = 'Random Uuid fields for mongoid'
  s.description = ''
  s.license = 'MIT'

  s.required_ruby_version = '>= 1.9'
  s.required_rubygems_version = '>= 1.3.6'

  s.add_dependency 'yard'
  s.add_dependency 'rake'
  s.add_dependency 'mongoid', '>= 5.0'
  s.add_dependency 'rspec', '~> 3.0'
  s.add_dependency 'mongoid-rspec', '~> 3.0.0'

  s.files = Dir.glob('lib/**/*')# + %w(CHANGELOG.md LICENSE README.md
  s.test_files = Dir.glob('spec/**/*')
  s.require_path = 'lib'
end
