class Player
  def initialize(name)
    @name = name
  end

  def attack
    raise NotImplementedError, "#{self.class} has not implemented method #{__method__}"
  end

  def defense
    raise NotImplementedError, "#{self.class} has not implemented method #{__method__}"
  end
end
