module Translator
  ONES = [
    'zero', 'one', 'two', 'three', 'four',
    'five', 'six', 'seven', 'eight', 'nine'
  ]

  def self.translate(param)
    ONES[param]
  end
end
