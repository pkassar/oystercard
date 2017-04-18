require "./lib/oystercard"

describe Oystercard do


  it 'has a balance' do
    expect(subject).to respond_to :balance
  end


  it 'begins at a balance of 0' do
    expect(subject.balance).to eq(0)
  end

  it 'adds 10 to the balance' do
    expect(subject.top_up(10)).to eq(10)
  end

it 'adds 10 to the balance of 10' do
    subject.top_up(10)
    expect(subject.top_up(10)).to eq(20)
    end


end
