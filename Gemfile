source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
#gem 'rails', '5.0.7.2'
gem 'rails', '7.0.4'
#ruby "2.6.4"
#ruby '2.7.6'
#ruby '3.0.4'
ruby '3.1.2'


# Use sqlite3 as the database for Active Record
gem 'devise'
gem 'twitter-bootstrap-rails'
gem 'devise-bootstrap-views'
gem 'bootstrap-datepicker-rails'
# Use Puma as the app server
gem 'puma'
# Use SCSS for stylesheets
gem 'sass-rails'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails'
gem 'carrierwave'
gem 'mini_magick'
gem 'fog-aws'
gem 'ransack'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'jquery-ui-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
#gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', group: :doc

#gem 'bundler', '~> 1.17', '>= 1.17.2'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem 'sendgrid-ruby'

gem 'sprockets-rails', :require => 'sprockets/railtie'

gem 'pg'
#gem 'pg', '~> 1.4', '>= 1.4.2'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  #gem 'sqlite3', '~> 1.3.6'
  gem 'byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :production do
  #gem 'pg'
  #changing this to see if I can fix the heroku error
  #gem 'pg', '~> 0.18'
  gem 'rails_12factor'
end