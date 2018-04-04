require("minitest/autorun")
require("minitest/rg")

require_relative("../pub.rb")
require_relative("../customer.rb")
require_relative("../drink.rb")
require_relative("../food.rb")

class CustomerTest < MiniTest::Test

def setup()
  @customer1 = Customer.new("Ruaridh", 50.00, 26)
  @customer2 = Customer.new("Daniel", 30.00, 23)
  @customer3 = Customer.new("Connor", 0.00, 25)
  @customer4 = Customer.new("Child", 1000.00, 14)
  @pub = Pub.new("The White Horse", 100)
  @drink1 = Drink.new("Whisky", 3.00, 30)
  @drink2 = Drink.new("Beer", 3.50, 10)
  @drink3 = Drink.new("Wine", 4.00, 20)
  @drink4 = Drink.new("Gin", 4.00, 30)
  @pub.add_drink(@drink1)
  @pub.add_drink(@drink2)
  @pub.add_drink(@drink3)
  @food1 = Food.new("Kebab", 4.00, 4)
  @food2 = Food.new("Falafel", 3.00, 2)
  @food3 = Food.new("Pizza", 6.00, 4)
  @food4 = Food.new("Chips", 2.00, 1)
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
  assert_equal(10, @customer2.drunk_level)
end

def test_buy_food
  @customer1.buy_food(@food2)
  assert_equal(47.00, @customer1.wallet)
end

def test_drunk_level__after_food
  @customer2.buy_a_drink(@drink2)
  @customer2.buy_food(@food2)
  assert_equal(8, @customer2.drunk_level)
end

def test_drunk_level__after_food_while_sober
  @customer2.buy_food(@food2)
  assert_equal(0, @customer2.drunk_level)
end

end
