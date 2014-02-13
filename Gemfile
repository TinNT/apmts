source "http://rubygems.org"

# Declare your gem's dependencies in blorgh.gemspec.
# Bundler will treat runtime dependencies like base dependencies, and
# development dependencies will be added by default to the :development group.
gemspec

# jquery-rails is used by the dummy application
gem 'jquery-rails', '~> 3.0.4'
gem "twitter-bootstrap-rails", :git => 'git://github.com/TinNT/twitter-bootstrap-rails.git', :branch => "bootstrap3"

# Declare any dependencies that are still in development here instead of in
# your gemspec. These might include edge Rails or gems from your path or
# Git. Remember to move these dependencies to your gemspec before releasing
# your gem to rubygems.org.

# To use debugger
# gem 'debugger'

gem "ejs", "~> 1.1.1"
gem "rabl", "~> 0.9.3"

group :development do
  gem 'sass-rails',   '~> 3.2.6'
  gem 'coffee-rails', '~> 3.2.2'

  gem 'uglifier', '>= 2.3.3'
  gem "turbo-sprockets-rails3", "~> 0.3.11"
  
  gem "therubyracer", "~> 0.12.0"
  gem "less-rails", "2.4.2"
  
  gem 'mysql2', '~> 0.3.11'
  
  gem 'rb-fsevent', '~> 0.9.3'
  gem "thin", "~> 1.5.1"
end