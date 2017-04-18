
class Oystercard
  attr_reader :balance, :station
  MAXIMUM_BALANCE = 90
  MINIMUM_FARE = 1

  def initialize
    @balance = 0
    @in_journey = false
  end

  def top_up(x)
    raise "card limit exceeded: Maximum Balance is £#{MAXIMUM_BALANCE}" if x+balance > MAXIMUM_BALANCE
    @balance += x
  end

  def in_journey?
    @in_journey
  end

  def touch_in(entry_station)
    raise "Min balance is £1" if @balance < MINIMUM_FARE
    @in_journey = true
    @station = entry_station
  end

  def touch_out
    deduct(MINIMUM_FARE)
    @in_journey = false
  end

  private

  def deduct(x)
    @balance -= x
  end

end
