require 'cash_super'

class CashNormal < CashSuper
  def accept_cash(money)
    return money
  end
end
