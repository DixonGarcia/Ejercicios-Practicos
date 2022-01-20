require 'data_type/2'

describe Calculator do
  it 'returns result math' do
    expect(described_class.new(5, 10).division).to eq(0.5)
  end
  
  it 'return result square root' do
    expect(described_class.new.square).to eq(938.26)
  end

  it 'return quotient' do
    expect(described_class.new(25, 6).quotient).to eq(4)
  end

  it 'return remainder' do
    expect(described_class.new(25, 6).remainder).to eq(1)
  end
  
  it 'return hypotenuse' do
    expect(described_class.new(5, 5).hypotenuse.round(2)).to eq(7.07)
  end

  it 'return reverse number' do
    expect(described_class.new(123456).reverse).to eq(654321)
  end

  it '#velocity' do
    expect(described_class.new(200,120).velocity.round(2)).to eq(1.67)
  end

  it '#quadratic' do
    expect(described_class.new(2,10,8).quadratic).to eq([-4.0,-1.0])
  end
end
