require 'forenoon_state'

class Work
  attr_accessor :state, :hour

  def initialize
    @state = ForenoonState.new
    @hour = 9
  end

  def write_program
    @state.write_program(self)
  end
end
