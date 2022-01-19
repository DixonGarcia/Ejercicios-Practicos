class Toy
  attr_accessor :weight
end

class Clown < Toy
  def initialize 
    @weight = 112
  end
end

class Doll < Toy
  def initialize
    @weight = 75
  end
end

class Item
  def initialize(obj, q)
    @object = obj
    @quantity = q
  end

  attr_accessor :object, :quantity
end

class Order
  attr_accessor :items

  def weight
    items.map { |i|  i.object.weight  * i.quantity }.sum
  end
end

