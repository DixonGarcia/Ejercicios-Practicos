require 'data_type/8'

describe Order do
  let(:order) { Order.new}

  before do
    order.items = [Item.new(Clown.new, 10), Item.new(Doll.new, 10)] 
  end

  it '#weight' do
    expect(order.weight).to eq(1870)
  end

end
