require "shopper"
require "item"

describe Shopper do
    it { is_expected.to respond_to(:scan) }
    it { is_expected.to respond_to(:return_total_cost)}
end
