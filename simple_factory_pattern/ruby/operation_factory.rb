require 'add'
require 'sub'

class OperationFactory
  def create(num1, num2, operate)
    oper = nil
    case operate
    when '+'
      oper = Add.new(num1, num2)
    when '-'
      oper = Sub.new(num1, num2)
    end
    return oper
  end
end
