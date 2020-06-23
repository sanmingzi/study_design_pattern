require 'state'

class AfternoonState < State
  def write_program(work)
    puts "now time is: #{work.hour}, feel good in the afternoon, continu working"
  end
end
