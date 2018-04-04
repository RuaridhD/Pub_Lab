require("minitest/autorun")
require("minitest/rg")

require_relative("../pub.rb")
require_relative("../customer.rb")
require_relative("../drink.rb")

class PubTest < MiniTest::Test

def setup
  @pub = Pub.new("The White Horse", 100)
  @drink1 = Drink.new("Whisky", 3.00, 3)
  @drink2 = Drink.new("Beer", 3.50, 1)
  @drink3 = Drink.new("Wine", 4.00, 2)
  @drink4 = Drink.new("Gin", 4.00, 3)
  @pub.add_drink(@drink1)
  @pub.add_drink(@drink2)
  @pub.add_drink(@drink3)
  @customer1 = Customer.new("Ruaridh", 50.00, 26)
  @customer2 = Customer.new("Daniel", 30.00, 23)
  @customer3 = Customer.new("Connor", 0.00, 25)
  @customer4 = Customer.new("Child", 1000.00, 14)
end

def test_name()
  assert_equal("The White Horse", @pub.name)
end

def test_till_balance
  assert_equal(100, @pub.till_balance)
end

def test_get_drinks
  assert_equal([@drink1, @drink2, @drink3], @pub.get_drinks)
end

def test_add_drink
  @pub.add_drink(@drink4)
  assert_equal([@drink1, @drink2, @drink3, @drink4], @pub.get_drinks)
end

def test_sell_drink
  @pub.sell_drink(@drink1, @customer1)
  assert_equal(103, @pub.till_balance)
end

def test_check_id__underage
  assert_equal(false, @pub.check_id(@customer4))
end

def test_check_id__of_age
  assert_equal(true, @pub.check_id(@customer3))
end

def test_sell_drink__underage
  result = @pub.sell_drink(@drink1, @customer4)
  assert_equal("You can't buy a drink", result)
end

def test_sell_drink__No_money
  result = @pub.sell_drink(@drink1, @customer3)
  assert_equal("You can't buy a drink", result)
end

def test_sell_drink__Too_drunk
  @pub.sell_drink(@drink1, @customer1)
  @pub.sell_drink(@drink1, @customer1)
  @pub.sell_drink(@drink1, @customer1)
  result = @pub.sell_drink(@drink1, @customer1)
  assert_equal("You can't buy a drink", result)

end

end
