require 'rspec'
require_relative '../arabic2english'

describe 'Arabic2English' do
  describe 'when given a valid input' do
    it 'should translate to English' do
      expect { Arabic2English.translate(0) }.to output("zero\n").to_stdout
    end

    it 'should translate 1 to one' do
      expect { Arabic2English.translate(1) }.to output("one\n").to_stdout
    end

    it 'should translate 10 to ten' do
      expect { Arabic2English.translate(10) }.to output("ten\n").to_stdout
    end

    it 'should translate 15 to fifteen' do
      expect { Arabic2English.translate(15) }.to output("fifteen\n").to_stdout
    end

    it 'should translate 77 to seventy seven' do
      expect { Arabic2English.translate(77) }.to output("seventy seven\n").to_stdout
    end

    it 'should translate 100 to one hundred' do
      expect { Arabic2English.translate(100) }.to output("one hundred\n").to_stdout
    end

    it 'should translate 307 to three hundred seven' do
      expect { Arabic2English.translate(307) }.to output("three hundred seven\n").to_stdout
    end

    it 'should translate 550 to five hundred fifty' do
      expect { Arabic2English.translate(550) }.to output("five hundred fifty\n").to_stdout
    end

    it 'should translate 888 to eight hundred eighty eight' do
      expect { Arabic2English.translate(888) }.to output("eight hundred eighty eight\n").to_stdout
    end
  end

  describe 'when given an invalid input' do
    it 'should output an error message' do
      expect { Arabic2English.translate('zero') }.to output("Invalid input!\n").to_stdout
    end
  end
end
