class Item
  attr_accessor :price

  def initialize(price=3)
    @price = price
  end
  def return_formatted_price
    "£#{'%.2f' % (price/100.0)}"
  end
end
