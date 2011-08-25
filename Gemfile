source 'http://rubygems.org'

gem 'rails', '3.1.0.rc5'

group :assets do
  gem 'sass-rails', "~> 3.1.0.rc"
  gem 'coffee-rails', "~> 3.1.0.rc"
  gem 'uglifier'
end

gem 'unicorn'

gem 'jquery-rails'

gem 'mongo_mapper'
gem 'bson_ext'

gem 'rspec-rails', :group => [:development, :test]

group :test do
  # Pretty printed test output
  gem 'turn', :require => false
  gem 'factory_girl_rails'
  gem 'capybara'
  gem 'guard-rspec'
  gem 'fakeweb'

  gem 'rb-inotify', :require => false # For guard and Linux
  gem 'libnotify', :require => false # For guard and Linux
end
