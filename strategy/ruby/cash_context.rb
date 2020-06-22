require 'cash_normal'
require 'cash_return'
require 'cash_discount'

class CashContext
  attr_accessor :cs

  def initialize(type)
    case type
    when 'normal'
      @cs = CashNormal.new
    when '20% discount'
      @cs = CashDiscount.new(0.2)
    when 'full 300 return 100'
      @cs = CashReturn.new(300, 100)
    end
  end

  def result(money)
    @cs.accept_cash(money)
  end
end
