require 'data_type/1'

describe Worker do 
  let(:worker) { described_class.new(10, 8) }
  it 'calculate salary' do
    expect(worker.payment).to eq(80)
  end
end
