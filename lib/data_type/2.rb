class Calculator
  attr_accessor :n1, :n2, :n3

  def initialize(number_1=nil, number_2=nil, number_3=nil)
    @n1 = number_1
    @n2 = number_2
    @n3 = number_3
  end

  def division
    return 'Error, division by zero' if n2.zero?

    n1.fdiv(n2)
  end

  def square
    Math.sqrt((3.9 + 5.5 * 2.1)**5).round(2)
  end

  def quotient
    return 0 if n2.zero?

    n1.div n2
  end

  def remainder
    return 0 if n2.zero?

    n1 % n2
  end

  def hypotenuse
    Math.hypot(n1,n2)
  end

  def reverse
    @n1.to_s.reverse.to_i
  end

  def velocity
    return 0 if n2.zero?

    n1.fdiv(n2)
  end
  
  def quadratic
    x1 = x2 = 0
    d = n2 * n2 - 4 * n1 * n3
    if d.negative?
      puts 'No Real Solutions! Only Complexe Solutions!'
      return nil
    end

    if d.zero?
      x1  = x2 = (-n2 + Math.sqrt(d)) / (2 * n1)
      p "x1 = x2 = #{x1}"
    end

    if d.positive? 
      x1 = (-n2 - Math.sqrt(d)) / (2 * n1)
      x2 = (-n2 + Math.sqrt(d)) / (2 * n1)
      puts "x1 = #{x1} x2 = #{x2}"
    end
    [x1,x2]
  end

  def capicua?
    n1 == reverse
  end
end

