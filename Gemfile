source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby_version = File.read('.ruby-version').strip

ruby ruby_version

gem 'dotenv-rails'
gem 'rails', '~> 5'
gem 'pg', '>= 0.18', '< 2.0'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'rack-cors'
gem 'rack-canonical-host'
gem 'decent_exposure'
gem 'dry-validation'
gem 'dry-types'
gem 'dry-struct'
gem 'dry-monads'
gem 'dry-matcher'
gem 'sucker_punch'
gem 'active_model_serializers', '~> 0.10.0'
gem 'oj'
gem 'webpacker'

group :development, :test do
  gem 'awesome_print'
  gem 'bundler-audit', '>= 0.5.0', require: false
  gem 'fabrication'
  gem 'byebug', platform: :mri
  gem 'pry-byebug', platform: :mri
  gem 'pry-doc'
  gem 'pry-rails'
  gem 'rspec-rails', '~> 3.6'
  gem 'puma'
end

group :development do
  gem 'spring-commands-rspec'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'brakeman', require: false
  gem 'fasterer', require: false
  gem 'rubocop', require: false
  gem 'metric_fu', require: false
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'bullet', require: false
end

group :test do
  gem 'shoulda-matchers'
  gem 'capybara-selenium'
  gem 'simplecov', require: false
end

group :production do
  gem 'iodine'
end
