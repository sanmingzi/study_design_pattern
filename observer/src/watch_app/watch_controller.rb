require_relative 'watch'
require_relative 'watch_view'

class WatchController
  def initialize
    @watch = Watch.new
    @view = WatchView.new(@watch)
    system "stty cbreak -echo"
    begin
      loop do
        break if STDIN.getc == ?q
        @watch.start_stop
      end
    rescue => exception
    ensure
      system "stty cooked echo"
    end
  end
end

WatchController.new
