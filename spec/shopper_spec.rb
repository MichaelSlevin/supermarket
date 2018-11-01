require "shopper"
require "item"

describe Shopper do
    it { is_expected.to respond_to(:scan) }
    it { is_expected.to respond_to(:return_total_cost)}
    it "returns the correct price for items" do
      shopper = Shopper.new
      shopper.scan(Item.new(3))
      shopper.scan(Item.new(2))
      expect(shopper.return_total_cost).to eq(5)
    end
    it "#return_formatted_total_cost returns £xx.xx" do
      shopper = Shopper.new
      shopper.scan(Item.new(300))
      shopper.scan(Item.new(200))
      expect(shopper.return_formatted_total_cost).to eq("£5.00")
    end
end
