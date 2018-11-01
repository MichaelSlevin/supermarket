require "./lib/item.rb"
require "./lib/shopper.rb"

item = Item.new(450)

puts item.price

shopper = Shopper.new
shopper.scan(item)

shopper.return_total_cost

puts item.return_formatted_price
puts shopper.return_formatted_total_cost
