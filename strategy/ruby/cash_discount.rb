require 'cash_super'

class CashDiscount < CashSuper
  def initialize(discount)
    @discount = discount
  end

  def accept_cash(money)
    return money * (1 - @discount)
  end
end
