require 'data_type/2'

describe 'Practice 2' do
  it 'return error when zero div' do
    expect(Calculator.new(20, 0).division).to eq('Error, division by zero')
  end

  describe '#capicua? palindromic_number' do
    it 'return true' do
      expect(Calculator.new(101).capicua?).to eq(true)
    end

    it 'return false' do
      expect(Calculator.new(123).capicua?).to eq(false)
    end
  end
end
