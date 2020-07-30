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
    out_msg = ""
    if @discount == 0
      out_msg = "There is no discount to apply."
    else
      @total = @total*(1-(@discount*0.01))
      out_msg = "After the discount, the total comes to $#{@total.to_i}."
    end
    return out_msg

  end



end
