source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'dotenv-rails', require: 'dotenv/rails-now'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails'
# Use Puma as the app server
gem 'puma'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'letter_opener_web'
end

# Use Capistrano for deployment
group :development do
    gem 'capistrano',         require: false
    gem 'capistrano-rvm',     require: false
    gem 'capistrano-rails',   require: false
    gem 'capistrano-bundler', require: false
    gem 'capistrano3-puma',   require: false
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'mysql2'
#gem 'jdbc-mysql',      '= 5.1.35', :platform => :jruby
gem 'thinking-sphinx'

gem 'oauth'
gem 'active_model_serializers'
gem 'rack-cors', :require => 'rack/cors'
gem 'cancancan'

gem 'rack-attack'
gem 'omniauth'
gem 'devise_token_auth'
gem 'scout_apm'

# for background tasks
gem 'delayed_job'
gem 'delayed_job_active_record'
gem 'daemons'

gem "paperclip"
gem 'aws-sdk'
gem 'faker', :git => 'https://github.com/stympy/faker.git', :branch => 'master'
gem "twilio-ruby"

gem 'factory_girl_rails'
gem 'exception_notification'

gem 'rest-client'
gem "administrate"
gem 'ransack'
gem "paranoia"
gem "geocoder"
gem 'paper_trail'
gem 'sanitize_email'
gem 'responders'
gem 'whenever', :require => false
gem 'capybara-email'
# gem 'high_voltage'
gem 'roadie'
gem 'logstash-logger'


group :test do
  gem 'cucumber-rails', require: false
  gem 'database_cleaner'
  gem 'selenium-webdriver'
  gem "chromedriver-helper"
  gem 'formulaic'
  gem 'rspec'
end
