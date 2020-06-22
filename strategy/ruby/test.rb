$LOAD_PATH.unshift  File.expand_path(File.join(File.dirname(__FILE__)))

require 'cash_context'

type = 'normal'
money1 = 100
money2 = 500
cc = CashContext.new(type)
puts cc.result(money1)
puts cc.result(money2)

type = '20% discount'
cc = CashContext.new(type)
puts cc.result(money1)
puts cc.result(money2)

type = 'full 300 return 100'
cc = CashContext.new(type)
puts cc.result(money1)
puts cc.result(money2)
