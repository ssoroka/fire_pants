source 'http://rubygems.org'

gem 'rails', '3.0.4'
gem 'devise'
gem 'less'
gem 'mustache_wax', :path => '/Users/steven/Projects/opensource/mustache_wax'

group :production do
  gem 'mysql'
end

group :development, :test do
  gem 'sqlite3'
  gem "rspec-rails", "~> 2.4"
  gem 'factory_girl'
  gem 'autotest'
  gem 'autotest-fsevent'
  gem 'autotest-growl'
  gem 'redgreen'
  gem 'steak' # instad of boring cucumber with english acceptance tests. bleh.
  
  # On OSX you may have to install libffi, you can install it via MacPorts with:
  #     sudo port install libffi
  gem 'capybara'
  
  # gem 'delorean' # lets you travel in time with Ruby by mocking Time.now
  # gem 'database_cleaner'
  # gem 'spork'
  gem 'heroku' # optional
end


# Use unicorn as the web server
# gem 'unicorn'

# gem 'ruby-debug'

# gem 'sqlite3-ruby', :require => 'sqlite3'
