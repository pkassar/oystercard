
class Oystercard
  attr_reader :balance
  MAXIMUM_BALANCE = 90

  def initialize
    @balance = 0
    @in_journey = false
  end

  def top_up(x)
    raise "card limit exceeded: Maximum Balance is £#{MAXIMUM_BALANCE}" if x+balance > MAXIMUM_BALANCE
    @balance += x
  end

  def deduct(x)
    @balance -= x
  end

  def in_journey?
    @in_journey
  end

def touch_in
  @in_journey = true
end

def touch_out
  @in_journey = false
end


end
