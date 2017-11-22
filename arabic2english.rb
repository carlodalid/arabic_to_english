require './lib/translator'

class Arabic2English
  def self.translate(param)
    if param.is_a? Integer
      puts Translator.translate(param)
    else
      puts "Invalid input!"
    end
  end
end
