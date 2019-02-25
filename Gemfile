source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.6'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'

# added on 10 15 18 by Sam Chacko per video https://www.youtube.com/watch?v=VpNBCpAgEsY&t=0s&index=2&list=PLv5qDW4EFExusV-kdCJAGbHN6fnYMjq6x
gem 'jquery-rails'
gem 'bootstrap', '~> 4.1.3'

# added on 10 15 18 by Sam Chacko per video https://www.youtube.com/watch?v=VpNBCpAgEsY&t=0s&index=2&list=PLv5qDW4EFExusV-kdCJAGbHN6fnYMjq6x # 4:31

gem 'friendly_id', '~> 5.2.0' # Note: You MUST use 5.0.0 or greater for Rails 4.0+

# added on 10/26/18 per video # 7
gem 'annotate'

# added on 10 24 18 by Sam Chacko per video # 4 
gem 'devise'

# added on 10 27 18 by Sam Chacko per video # 8
gem 'will_paginate', '~> 3.1.0'

# added on 10 27 18 by Sam Chacko per video # 0
gem 'acts-as-taggable-on', '~> 6.0'

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # per video # 10 for disqus
  gem 'pry-rails'

  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
