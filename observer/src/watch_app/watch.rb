require 'observer'

class Watch
  include Observable

  def initialize
    @time = 0
    @last = 0
    @running = false
    Thread.start do
      loop do
        sleep 0.01
        if @running
          now = Time.now.to_f
          @time += now - @last
          @last = now
          changed
          notify_observers(@time)
        end
      end
    end
  end

  def start_stop
    @last = Time.now.to_f
    @running = !@running
  end

  def time
    @time
  end
end
