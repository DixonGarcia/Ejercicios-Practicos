require 'data_type/2'

describe Calculator do
  it 'returns result math' do
    expect(described_class.new.division).to eq(0.5)
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


end
