
class Oystercard
  attr_reader :balance
  MAXIMUM_BALANCE = 90

  def initialize
    @balance = 0
  end

  def top_up(x)
    raise "card limit exceeded: Maximum Balance is £#{MAXIMUM_BALANCE}" if x+balance > MAXIMUM_BALANCE
    @balance += x
  end

  def deduct(x)
    @balance -= x
  end
end
