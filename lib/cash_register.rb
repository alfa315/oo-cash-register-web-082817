class CashRegister
  attr_accessor :total, :price, :items, :last_item
  attr_reader :discount, :title, :quantity


  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_item = 0
  end

  def add_item(title, price, quantity = 1)
    @total = @total + (price * quantity)
    counter = 1
    while counter <= quantity
      items << title
      counter += 1
    end 
    @last_item = price
  end

  def apply_discount
    if @discount > 0
      @total = (@total * ((100.to_f - discount.to_f)/100.to_f)).to_i
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total = @total - @last_item
  end

end
