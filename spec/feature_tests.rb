require "./lib/item.rb"
require "./lib/shopper.rb"

item = Item.new

puts item.price

shopper = Shopper.new
shopper.scan(item)

shopper.return_total_cost
