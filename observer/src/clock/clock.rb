require 'observer'

class Tick
  include Observable

  def tick
    loop do
      now = Time.now
      changed
      notify_observers(now)
      sleep 1 - Time.now.usec / 1000000.0
    end
  end
end

class TextClock
  def initialize(tick)
    tick.add_observer(self)
  end

  def update(time)
    printf "\e[8D%02d:%02d:%02d", time.hour, time.min, time.sec
    STDOUT.flush
  end
end

tick = Tick.new
TextClock.new(tick)
tick.tick
