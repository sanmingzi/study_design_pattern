class Proxy
  def initialize(obj)
    @obj = obj
  end

  def method_missing(name, *args)
    @obj.send(name, *args)
  end
end
