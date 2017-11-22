require 'rspec'
require_relative '../arabic2english'

describe 'Arabic2English' do
  describe 'when given a valid input' do
    it 'should translate to English' do
      expect { Arabic2English.translate(0) }.to output("zero\n").to_stdout
    end
  end

  describe 'when given an invalid input' do
    it 'should output an error message' do
      expect { Arabic2English.translate('zero') }.to output("Invalid input!\n").to_stdout
    end
  end
end
