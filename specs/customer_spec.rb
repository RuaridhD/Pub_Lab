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
  @pub = Pub.new("The White Horse", 100)
  @drink1 = Drink.new("Whisky", 3.00)
  @drink2 = Drink.new("Beer", 3.50)
  @drink3 = Drink.new("Wine", 4.00)
  @drink4 = Drink.new("Gin", 4.00)
  @pub.add_drink(@drink1)
  @pub.add_drink(@drink2)
  @pub.add_drink(@drink3)
end

def test_name()
  assert_equal("Connor", @customer3.name)
end

def test_wallet()
  assert_equal(30.00, @customer2.wallet)
end

def test_buy_a_drink
  @customer2.buy_a_drink(@drink1, @pub)
  assert_equal(27.00, @customer2.wallet)
  assert_equal(103, @pub.till_balance)
end



# def test_buy_a_drink_no_money
#
# end

end
