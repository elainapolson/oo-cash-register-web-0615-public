class CashRegister

  attr_accessor :total, :discount, :items

  def initialize(*discount)
    @total = 0
    @items = []
    if discount
      @discount = discount[0]
    end
  end

  def total
    @total
  end

  def add_item(title, price, quantity = nil)
    if quantity
      self.total = self.total + price * quantity.to_i
      quantity.times do
        @items << title
      end
    else
      self.total = self.total + price
      @items << title
    end
  end

  def apply_discount
    if discount 
      @total = (@total-@total*(@discount.to_f/100.0))
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end


end