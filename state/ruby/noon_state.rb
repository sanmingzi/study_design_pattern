require 'state'
require 'afternoon_state'

class NoonState < State
  def write_program(work)
    if work.hour < 13
      puts "now time is: #{work.hour}, sleeping in the noon"
    else
      work.state = AfternoonState.new
      work.write_program
    end
  end
end
