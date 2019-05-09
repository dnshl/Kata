RSpec.describe Kata do
  it 'has a version number' do
    expect(Kata::VERSION).not_to be nil
  end

  describe Kata::Converter do
    before(:all) do
      @converter = described_class.instance
    end

    context 'arabic numbers to roman numbers' do
      it '#convert' do
        expect(@converter.convert(1)).to eq 'I'
        expect(@converter.convert(2)).to eq 'II'
        expect(@converter.convert(3)).to eq 'III'
        expect(@converter.convert(4)).to eq 'IV'
        expect(@converter.convert(5)).to eq 'V'
        expect(@converter.convert(6)).to eq 'VI'
        expect(@converter.convert(7)).to eq 'VII'
        expect(@converter.convert(8)).to eq 'VIII'
        expect(@converter.convert(9)).to eq 'IX'
        expect(@converter.convert(10)).to eq 'X'
        expect(@converter.convert(20)).to eq 'XX'
        expect(@converter.convert(40)).to eq 'XL'
        expect(@converter.convert(50)).to eq 'L'
        expect(@converter.convert(90)).to eq 'XC'
        expect(@converter.convert(100)).to eq 'C'
        expect(@converter.convert(400)).to eq 'CD'
        expect(@converter.convert(500)).to eq 'D'
        expect(@converter.convert(900)).to eq 'CM'
        expect(@converter.convert(1000)).to eq 'M'

        expect(@converter.convert(2019)).to eq 'MMXIX'
        expect(@converter.convert(3999)).to eq 'MMMCMXCIX'
        expect(@converter.convert(0)).to eq ''

        expect(@converter.convert(-1)).to eq '-I'
      end
    end

    context 'roman numbers to arabic numbers' do
      it '#convert' do
        expect(@converter.convert('I')).to eq 1
        expect(@converter.convert('II')).to eq 2
        expect(@converter.convert('III')).to eq 3
        expect(@converter.convert('IV')).to eq 4
        expect(@converter.convert('V')).to eq 5
        expect(@converter.convert('VI')).to eq 6
        expect(@converter.convert('VII')).to eq 7
        expect(@converter.convert('VIII')).to eq 8
        expect(@converter.convert('IX')).to eq 9
        expect(@converter.convert('X')).to eq 10
        expect(@converter.convert('XX')).to eq 20
        expect(@converter.convert('XL')).to eq 40
        expect(@converter.convert('L')).to eq 50
        expect(@converter.convert('XC')).to eq 90
        expect(@converter.convert('C')).to eq 100
        expect(@converter.convert('CD')).to eq 400
        expect(@converter.convert('D')).to eq 500
        expect(@converter.convert('CM')).to eq 900
        expect(@converter.convert('M')).to eq 1000

        expect(@converter.convert('MMXIX')).to eq 2019
        expect(@converter.convert('MMMCMXCIX')).to eq 3999
        expect(@converter.convert('')).to eq 0
        expect(@converter.convert('-I')).to eq -1
      end
    end
  end
end
