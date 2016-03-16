source 'https://rubygems.org'
gemspec

gem 'mongoid', git: 'https://github.com/xzgyb/mongoid-for-rails5.git'
gem "rake"

group :test do
  gem "rspec", '~> 3.5.0.beta2'
  gem 'mongoid-rspec', '3.0.0'

  if ENV["CI"]
    gem "coveralls", require: false
  else
    gem "guard"
    gem "guard-rspec"
    gem "rb-fsevent"
  end
end
