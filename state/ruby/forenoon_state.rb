require 'state'
require 'noon_state'

class ForenoonState < State
  def write_program(work)
    if work.hour < 12
      puts "now time is: #{work.hour}, high spirit in the morning"
    else
      work.state = NoonState.new
      work.write_program
    end
  end
end
