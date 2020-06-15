require 'operation'

class Add < Operation
  def result
    return @num1 + @num2
  end
end
