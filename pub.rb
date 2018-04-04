class Pub

  def initialize(name, till_balance)
    @name = name
    @till_balance = till_balance
    @drinks = []
    @food = []
  end

  def name()
    return @name
  end

  def till_balance()
    return @till_balance
  end

  def get_drinks
    return @drinks
  end

  def get_food
    return @food
  end

  def add_drink(drink)
    @drinks.push(drink)
  end

  def add_food(food)
    @food.push(food)
  end

  def check_id(customer)
    if customer.get_age >= 18
      return true
    else
      return false
    end
  end

  def sell_drink(drink, customer)
    if (check_id(customer)) && (customer.wallet >= drink.price) && (customer.drunk_level <= 80)
      @till_balance += drink.price
      customer.buy_a_drink(drink)
      return "test"
    else
      return "You can't buy a drink"
    end
  end

  def sell_food(food, customer)
    if customer.wallet >= food.price
      @till_balance += food.price
      customer.buy_food(food)
    else
      return "You can't buy food"
    end
  end

end #End of class
