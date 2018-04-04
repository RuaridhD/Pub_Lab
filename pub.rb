class Pub

  def initialize(name, till_balance)
    @name = name
    @till_balance = till_balance
    @drinks = []
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

  def add_drink(drink)
    @drinks.push(drink)
  end

  def sell_drink(drink, customer)
    if (check_id(customer)) && (customer.wallet >= drink.price) && (customer.drunk_level <= 8)
      @till_balance += drink.price
      customer.buy_a_drink(drink)
      return "test"
    else
      return "You can't buy a drink"
    end

  end

  def check_id(customer)
    if customer.get_age >= 18
      return true
    else
      return false
    end
  end

end
