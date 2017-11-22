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
end
