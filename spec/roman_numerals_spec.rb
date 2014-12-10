require 'spec_helper'

describe RomanNumerals do
  describe ".parse" do
    it "parses the number into an old roman numeral" do
      number = 9
      result = RomanNumerals.parse(number)

      expect(result).to eq("VIIII")
    end

    it "raises an error if number is 0 or less" do
      number = 0

      expect {RomanNumerals.parse(number)}.
        to raise_error("Number must be positive")
    end
  end
end
