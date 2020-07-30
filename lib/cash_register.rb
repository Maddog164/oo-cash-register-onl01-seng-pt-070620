require 'pry'
class CashRegister

  attr_accessor :total, :last_transaction

  def initialize(discount=20)
    @total = 0
    @discount = discount
  end

  def discount
    @discount

  end

  def add_item(title,price,quantity=1)
    price = price*quantity
    @total = (@total+price)
  end

  def apply_discount
    @total = @total*((1-(discount*.01)).class)

  end



end
