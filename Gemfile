source 'http://rubygems.org'

ruby '2.0.0'

gem 'rails', '~> 3.2.13'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', "  ~> 3.2.0"
  gem 'uglifier'
  gem 'compass-rails'
  gem 'ejs'
end

gem 'airbrake_user_attributes'


gem 'jquery-rails'

gem 'devise'
gem 'transitions', '0.0.9', :require => ["transitions", "active_record/transitions"]
gem 'i18n-js'
gem 'configuration'

gem 'fastercsv', '1.5.3', :platforms => :ruby_18
# (using standard csv lib if ruby version is 1.9)

gem 'pg'

gem 'unicorn-rails'

group :development, :test do
  gem 'sqlite3'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'jasmine', '1.1.0'
  gem 'capybara'
  # gem 'capybara-webkit'
  gem 'database_cleaner'
  # Deploy with Capistrano
  gem 'capistrano', '~> 2.13'
  gem 'capistrano-ext', '~> 1.2.1'
  gem 'rvm-capistrano', '~> 1.2.7', :require => false
end
