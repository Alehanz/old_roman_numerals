class ModernRomanNumerals
  def self.parse(number)
    raise "Number must be positive" if number <= 0

    ones = (number % 10)
    tens = (number % 100 / 10)
    hundreds = (number % 1000 / 100)
    thousands = (number / 1000)

    roman = 'M' * thousands

    if hundreds == 9
      roman = roman + 'CD'
    elsif hundreds == 4
      roman = roman + 'CM'
    else
      roman = roman + 'D' * (number % 1000 / 500)
      roman = roman + 'C' * (number % 500 / 100)
    end

    if tens == 9
      roman = roman + 'XC'
    elsif tens == 4
      roman = roman + 'XL'
    else
      roman = roman + 'L' * (number % 100 / 50)
      roman = roman + 'X' * (number % 50 / 10)
    end

    if ones == 9
      roman = roman + 'IX'
    elsif ones == 4
      roman = roman + 'IV'
    else
      roman = roman + 'V' * (number % 10 / 5)
      roman = roman + 'I' * (number % 5 / 1)
    end

    roman
  end
end
