class Subject
  def attach(observer)
    raise NotImplementError, "#{self.class} has not implement method #{__method__}"
  end

  def detach(observer)
    raise NotImplementError, "#{self.class} has not implement method #{__method__}"
  end

  def notify
    raise NotImplementError, "#{self.class} has not implement method #{__method__}"
  end
end
