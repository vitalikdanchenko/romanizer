require 'romanizer'

describe 1234 do
  it { should be_kind_of(Romanize) }
end

describe 'trying to romanize valid numeric' do
  it 'should return corect value' do
    expect(1.romanize).to eq('I')
    expect(4.romanize).to eq('IV')
    expect(9.romanize).to eq('IX')
    expect(10.romanize).to eq('X')
    expect(40.romanize).to eq('XL')
    expect(90.romanize).to eq('XC')
    expect(100.romanize).to eq('C')
    expect(400.romanize).to eq('CD')
    expect(500.romanize).to eq('D')
    expect(900.romanize).to eq('CM')
    expect(1000.romanize).to eq('M')
  end
end

describe 'trying to romanize invalid numeric' do
  it 'raises error' do
    expect { 0.romanize }.to raise_error(ArgumentError)
    expect { 4000.romanize }.to raise_error(ArgumentError)
  end
end
