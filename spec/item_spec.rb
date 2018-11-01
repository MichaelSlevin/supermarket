require "shopper"
require "item"

describe Item do
  let (:item) { Item.new }
  let (:item_200) {Item.new(200)}
  it { is_expected.to respond_to(:price) }
  it { expect(item.price).to eq(3) }
  it { expect(item_200.price).to eq(200) }
  it { expect(item_200.return_formatted_price).to eq("£2.00")}
end
