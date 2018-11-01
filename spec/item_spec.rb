require "shopper"
require "item"

describe Item do
  it { is_expected.to respond_to(:price) }
end
