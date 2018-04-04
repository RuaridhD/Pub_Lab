require("minitest/autorun")
require("minitest/rg")

require_relative("../pub.rb")
require_relative("../customer.rb")
require_relative("../drink.rb")

class CustomerTest < MiniTest::Test

def setup()
  @customer1 = Customer.new("Ruaridh", 50.00, 26)
  @customer2 = Customer.new("Daniel", 30.00, 23)
  @customer3 = Customer.new("Connor", 0.00, 25)
  @customer4 = Customer.new("Child", 1000.00, 14)
  @pub = Pub.new("The White Horse", 100)
  @drink1 = Drink.new("Whisky", 3.00, 3)
  @drink2 = Drink.new("Beer", 3.50, 1)
  @drink3 = Drink.new("Wine", 4.00, 2)
  @drink4 = Drink.new("Gin", 4.00, 3)
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
  @customer2.buy_a_drink(@drink1)
  assert_equal(27.00, @customer2.wallet)
end

def test_get_age
  assert_equal(26, @customer1.get_age)
end

def test_drunk_level__without_drink
  assert_equal(0, @customer2.drunk_level)
end

def test_drunk_level__with_drink
  @customer2.buy_a_drink(@drink2)
  assert_equal(1, @customer2.drunk_level)
end

end
