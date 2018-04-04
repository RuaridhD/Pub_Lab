require("minitest/autorun")
require("minitest/rg")

require_relative("../pub.rb")
require_relative("../customer.rb")
require_relative("../drink.rb")

class CustomerTest < MiniTest::Test

def setup()
  @customer1 = Customer.new("Ruaridh", 50.00)
  @customer2 = Customer.new("Daniel", 30.00)
  @customer3 = Customer.new("Connor", 0.00)
end

def test_name()
  assert_equal("Connor", @customer3.name)
end

def test_wallet()
  assert_equal(30.00, @customer2.wallet)
end

end
