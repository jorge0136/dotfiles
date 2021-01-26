group :development, :test do
  gem "fabrication"
  gem "guard-rspec"
  gem "pry-byebug"
  gem "rails-controller-testing", "~> 1.0"
  gem "rspec-rails"
  gem "rubocop-rspec", require: false

group :development do
  gem "optimum-energy-rubocop"
  gem "rubocop-rspec", require: false
  gem "simplecov"
  gem "simplecov-console"

run "bundle install"