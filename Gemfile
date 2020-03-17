source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby '2.6.3'

gem 'rails', '5.2.3'
gem 'puma', '~> 3.7'

# gem 'pg', '>= 0.18', '< 2.0'
gem 'mysql2'
gem 'bcrypt'
# gem 'bcrypt-ruby'

gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'haml-rails'
gem 'haml2slim'
gem 'html2haml'
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'hashie', '~> 3.4.6'

gem 'will_paginate'
gem 'active_model_serializers', '~> 0.10.0'
gem 'faker'
gem 'jwt'
gem 'pundit'

gem 'delayed_job_active_record'
gem "down", "~> 4.4"
gem 'swagger-blocks'
gem 'tainbox'
gem 'request_store'
gem 'twilio-ruby'

# gem 'omniauth-auth0'
# gem 'omniauth-rails_csrf_protection'
gem 'omniauth', '~> 1.3.1'
gem 'omniauth-auth0', '~> 1.4.1'
gem 'rest-client'

gem 'country_select'
gem 'carmen'
gem 'carmen-rails'

gem 'geocoder'
gem 'google_timezone'

gem 'bootstrap-sass'
gem 'bootstrap-datepicker-rails'
gem 'jquery-datetimepicker-rails'
gem 'parsley-rails'
gem 'jquery-rails', '4.3.1'
gem 'jquery-ui-rails'
gem 'jquery-datatables-rails'
gem 'spinjs-rails'
gem 'momentjs-rails'
gem 'remotipart'          # Ajax File Upload
gem 'selectize-rails'
gem 'chosen-rails'
gem 'tinymce-rails'

# for spreadsheets files
gem 'roo'
gem 'rubyzip', '>= 1.2.1'
gem 'axlsx', git: 'https://github.com/randym/axlsx.git', ref: 'c8ac844'
gem 'caxlsx_rails'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
  gem 'letter_opener'
  gem 'dotenv', '~> 2.2'
  gem 'dotenv-rails', '~> 2.2'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do
  gem 'rails_12factor'
  # gem 'sentry-raven'
end
