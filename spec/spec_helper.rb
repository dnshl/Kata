require 'simplecov'
require 'simplecov-console'
fs = [SimpleCov::Formatter::HTMLFormatter, SimpleCov::Formatter::Console]
SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new(fs)
SimpleCov.start do
  add_filter 'lib/kata/logging.rb'
end

require 'bundler/setup'
require 'kata'

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = '.rspec_status'

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
