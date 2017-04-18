
class Oystercard
  attr_reader :balance, :entry_station, :history
  MAXIMUM_BALANCE = 90
  MINIMUM_FARE = 1

  def initialize
    @balance = 0
    @entry_station = nil
    @history = []
  end

  def top_up(x)
    raise "card limit exceeded: Maximum Balance is £#{MAXIMUM_BALANCE}" if x+balance > MAXIMUM_BALANCE
    @balance += x
  end

  def in_journey?
    @entry_station != nil
  end

  def touch_in(entry_station)
    raise "Min balance is £1" if @balance < MINIMUM_FARE
    @entry_station = entry_station
  end

  def touch_out(exit_station)
    deduct(MINIMUM_FARE)
    history.push ({ @entry_station => exit_station })
    @entry_station = nil
  end

  private

  def deduct(x)
    @balance -= x
  end

end
