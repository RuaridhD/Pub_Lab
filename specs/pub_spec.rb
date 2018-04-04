require("minitest/autorun")
require("minitest/rg")

require_relative("../pub.rb")
require_relative("../customer.rb")
require_relative("../drink.rb")

class PubTest < MiniTest::Test

def setup
  @pub = Pub.new("The White Horse", 100)
  #add drinks later
end

def test_name()
  assert_equal("The White Horse", @pub.name)
end

def test_till_balance
  assert_equal(100, @pub.till_balance)
end



end
