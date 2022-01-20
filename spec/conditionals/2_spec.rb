require 'conditionals/2'

describe 'Practice 2' do
  let(:person) {Person.new(21, 1600) }
  let(:person2) { Person.new(12, 10500) }
  let(:person3) { Person.new(82, 200) }
  let(:irs) { Irs.new }

  describe 'when person is adult' do
    it 'return false when salary is 1600' do
      irs.citizen = person
      expect(irs.taxt_excent?).to eq(false)
    end

    it 'returns true when salary is 200' do
      irs.citizen = person3
      expect(irs.taxt_excent?).to eq(true)
    end
  end

  describe 'when is a young person' do
    it  'returns false when salary is 10500' do
      irs.citizen = person2
      expect(irs.taxt_excent?).to eq(true)
    end
  end

  describe 'IMC Standart' do
    let(:person4) { Person.new(nil, nil, 85, 1.75) }
    let(:person5) { Person.new(nil,nil,50,1.65) }
    let(:who) { Who.new }

    it 'returns the imc' do
      expect(person4.imc).to eq(27.8)
    end

    it 'return sobrepeso' do
      who.person = person4
      expect(who.imc_standart).to eq("#{person4.weight} - #{person4.imc} - sobrepeso")
    end

    it 'returns bajo peso' do
      who.person = person5
      expect(who.imc_standart).to eq("#{person5.weight} - #{person5.imc} - bajo peso")
    end
  end
end

