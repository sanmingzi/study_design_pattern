class Operation
  attr_accessor :num1, :num2

  def initialize(num1, num2)
    @num1, @num2 = num1, num2
  end

  # interface
  def result
    raise 'No method'
  end
end
