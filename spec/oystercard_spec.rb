require "./lib/oystercard"

describe Oystercard do


  it 'has a balance' do
    expect(subject).to respond_to :balance
  end


  it 'begins at a balance of 0' do
    expect(subject.balance).to eq(0)
  end

end
