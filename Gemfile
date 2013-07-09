source 'http://rubygems.org'

ruby '2.0.0'

gem 'rails', '~> 4.0.0'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', '~> 4.0.0'
  gem 'coffee-rails'
  gem 'uglifier'
  gem "compass-rails", github: "milgner/compass-rails", ref: "1749c06f15dc4b058427e7969810457213647fb8"
  gem 'ejs'
end

gem 'airbrake_user_attributes'


gem 'jquery-rails'
gem 'rails-observers'

gem 'devise'
gem 'transitions', '0.0.9', :require => ["transitions", "active_record/transitions"]
gem 'i18n-js'
gem 'rails-i18n'
gem 'configuration'

gem 'pg'

gem 'unicorn-rails'

group :development, :test do
  gem 'thin'
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


if ENV['TRAVIS'] == 'true'
  group :test do
    case ENV['DB']
    when'mysql'
      gem 'mysql2'
    when 'postgresql'
      gem 'pg'
    else
      gem 'sqlite3'
    end
  end   
end
