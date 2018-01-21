require_relative File.expand_path('../../lib/sort.rb', __FILE__)

RSpec.configure do |config|
  config.mock_with :rspec
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
