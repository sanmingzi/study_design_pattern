class State
  def write_program(work)
    raise NotImplementedError, "#{self.class} has not implemented method #{__method__}"
  end
end
