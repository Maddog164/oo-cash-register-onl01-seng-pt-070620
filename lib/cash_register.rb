require 'pry'
class CashRegister

  attr_accessor :total, :last_transaction

  def initialize(emp_discount=20)
    @total = 0
    @discount = emp_discount
    binding.pry
  end

  def discount

  end


end
