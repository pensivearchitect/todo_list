source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

# kill actioncable with fire
rails_gems = %w[activerecord activemodel actionpack actionview actionmailer
                activejob activesupport railties activestorage]

gem 'dotenv-rails'
rails_gems.map { |g| gem g, '~> 5' }
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
gem 'fast_jsonapi'
gem 'oj'
gem 'webpacker'
gem 'puma'
gem 'closure_tree', github: 'ClosureTree/closure_tree'

group :development, :test do
  gem 'awesome_print'
  gem 'bundler-audit', '>= 0.5.0', require: false
  gem 'faker', require: false
  gem 'rack-mini-profiler', require: false
  gem 'fabrication'
  gem 'byebug', platform: :mri
  gem 'pry-byebug', platform: :mri
  gem 'pry-doc'
  gem 'pry-rails'
  gem 'rspec-rails', '~> 3.6'
  gem 'flamegraph'
  gem 'stackprof'
end

group :development do
  gem 'spring-commands-rspec'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'brakeman', require: false
  gem 'fasterer', require: false
  gem 'rubocop', require: false
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'bullet', require: false
end

group :test do
  gem 'shoulda-matchers', github: 'thoughtbot/shoulda-matchers'
  gem 'capybara-selenium'
  gem 'simplecov', require: false
end
