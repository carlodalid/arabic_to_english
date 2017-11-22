module Translator
  ONES = [
    'zero', 'one', 'two', 'three', 'four',
    'five', 'six', 'seven', 'eight', 'nine'
  ]

  TEENS = [
    'ten', 'eleven', 'twelve', 'thirteen', 'fourteen',
    'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen'
  ]

  TYS = [
    'zero', 'ten', 'twenty', 'thirty', 'forty',
    'fifty', 'sixty', 'seventy', 'eighty', 'ninety'
  ]

  def self.translate(param)
    num_str = param.to_s
    num_arr = num_str.split('')

    case num_arr.length
    when 1
      ONES[param]
    when 2
      translate_two_digits(num_arr)
    when 3
      translate_three_digits(num_arr)
    when 4
      translate_four_digits(num_arr)
    end
  end

  private

  def self.translate_two_digits(param)
    ones = param[1].to_i
    tens = param[0].to_i

    if ones === 0
      "#{TYS[tens]}"
    elsif tens === 1
      "#{TEENS[ones]}"
    else
      "#{TYS[tens]} #{ONES[ones]}"
    end
  end

  def self.translate_three_digits(param)
    ones = param[2].to_i
    tens = param[1].to_i
    hund = param[0].to_i

    if ones === 0 && tens === 0
      "#{ONES[hund]} hundred"
    elsif tens === 0
      "#{ONES[hund]} hundred #{ONES[ones]}"
    else
      "#{ONES[hund]} hundred #{translate_two_digits(param[1..2])}"
    end
  end

  def self.translate_four_digits(param)
    ones = param[3].to_i
    tens = param[2].to_i
    hund = param[1].to_i
    thou = param[0].to_i

    if hund === 0 && tens === 0 && ones === 0
      "#{ONES[thou]} thousand"
    elsif hund === 0 && tens === 0
      "#{ONES[thou]} thousand #{ONES[ones]}"
    elsif (hund === 0 && ones === 0) || hund === 0
      "#{ONES[thou]} thousand #{translate_two_digits(param[2..3])}"
    else
      "#{ONES[thou]} thousand #{translate_three_digits(param[1..3])}"
    end
  end
end
