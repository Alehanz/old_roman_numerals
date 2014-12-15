require "spec_helper"

describe ModerRomanNumeralsV2 do
  describe ".parse" do
    it "parses the number into a modern roman numeral" do
      number = 9
      result = ModerRomanNumeralsV2.parse(number)

      expect(result).to eq("IX")
    end

    it "raises an error if number is 0 or less" do
      number = 0

      expect {ModerRomanNumeralsV2.parse(number)}.
        to raise_error("Number must be positive")
    end
  end
end
