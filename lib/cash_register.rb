require 'pry'
class CashRegister

  attr_accessor :total, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def discount
    @discount

  end

  def add_item(item,price,quantity=1)
    @items << item
    price = price*quantity
    @total = (@total+price)
  end

  def apply_discount
    out_msg = ""
    #binding.pry
    if @discount == 0
      #binding.pry
      out_msg = "There is no discount to apply."
    else
      #binding.pry
      @total = @total*(1-(@discount*0.01))
      out_msg = "After the discount, the total comes to $#{@total.to_i}."
    end
    return out_msg

    def items
      return @items
    end
      

  end



end
