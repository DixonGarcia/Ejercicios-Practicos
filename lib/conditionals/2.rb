class Person
  def initialize(a = nil, s = nil, w = nil, h = nil)
    @age = a
    @salary = s
    @weight = w
    @height = h
  end

  attr_accessor :age, :salary, :weight, :height

  def adult?
    age >= 18
  end

  def imc
    return nil if height.zero?

    weight.fdiv(height**2).round(1)
  end

end

class Irs
  attr_accessor :citizen

    def taxt_excent?
      citizen.salary < 500 || !citizen.adult?
    end
end

class Who
  attr_accessor :person

  def imc_standart
    case person.imc 
    when 0..15.9 then "#{person.weight} - #{person.imc} - Criterio de ingreso"
    when 16..16.9 then "#{person.weight} - #{person.imc} - infrapeso"
    when 17..18.4 then "#{person.weight} - #{person.imc} - bajo peso"
    when 18.5..24.9 then "#{person.weight} - #{person.imc} - peso normal"
    when 25..29.9 then "#{person.weight} - #{person.imc} - sobrepeso"
    when 30..39.9 then "#{person.weight} - #{person.imc} - obesidad premórbida"
    when 40..44.5 then "#{person.weight} - #{person.imc} - obesidad mórbida"
    else "#{person.weight} - #{person.imc} - obesidad hipermórbida"
    end 
  end
end

