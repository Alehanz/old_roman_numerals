class ModerRomanNumeralsV2
  def self.parse(number)
    raise "Number must be positive" if number <= 0

    result = ""

    numerals = { "M" => 1000,
                 "CM" => 900,
                 "D" => 500,
                 "CD" => 400,
                 "C" => 100,
                 "XC" => 90,
                 "L" => 50,
                 "XL" => 40,
                 "X" => 10,
                 "IX" => 9,
                 "V" => 5,
                 "IV" => 4,
                 "I" => 1 }


    numerals.each do |numeral, integer|
      while number >= integer
        result += numeral
        number -= integer
      end
    end

    return result

  end
end
