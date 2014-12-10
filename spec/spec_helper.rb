require_relative '../roman_numerals'
require_relative '../modern_roman_numerals'

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

