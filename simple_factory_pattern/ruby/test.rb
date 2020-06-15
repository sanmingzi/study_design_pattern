$LOAD_PATH.unshift  File.expand_path(File.join(File.dirname(__FILE__)))

require 'operation_factory'

oper_fac = OperationFactory.new

num1, num2, operate = 1, 2, '+'
puts oper_fac.create(num1, num2, operate).result

num1, num2, operate = 1, 2, '-'
puts oper_fac.create(num1, num2, operate).result
