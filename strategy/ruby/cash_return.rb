require 'cash_super'

class CashReturn < CashSuper
  def initialize(money_full, money_return)
    @money_full, @money_return = money_full, money_return
  end

  def accept_cash(money)
    money >= @money_full ? money - @money_return : money
  end
end
