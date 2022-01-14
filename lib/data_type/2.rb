class Calculator
  attr_accessor :n1, :n2

  def initialize(number_1=nil, number_2=nil)
    @n1 = number_1
    @n2 = number_2
  end

  def division
    (3 + 2).fdiv(2 * 5)
  end

  def square
    Math.sqrt((3.9 + 5.5 * 2.1)**5).round(2)
  end

  def quotient
    n1.div n2
  end

  def remainder
    n1 % n2
  end
end

calculator = Calculator.new
puts 'Put the first number'
calculator.n1 = gets.to_f
puts 'Put the second number'
calculator.n2 = gets.to_f
return nil if calculator.n2.zero?

puts "#{calculator.n1} divided #{calculator.n2} give a quotient #{calculator.quotient} and a remainder of #{calculator.remainder}"
