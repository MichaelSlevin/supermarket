class Shopper
  attr_reader :checkout
  def initialize
    @checkout = []
  end
  def scan(item)
    checkout.push(item)
  end
  def return_total_cost
    total_cost = 0
    @checkout.each { |item| total_cost += item.price }
    total_cost
  end
  def return_formatted_total_cost
    "£#{'%.2f' % (return_total_cost/100.0)}"
  end
end
