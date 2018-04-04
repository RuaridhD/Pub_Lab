class Customer

  def initialize(name, wallet, age)
    @name = name
    @wallet = wallet
    @age = age
  end

  def name()
    return @name
  end

  def wallet()
    return @wallet
  end

  def buy_a_drink(drink, pub)
    @wallet -= drink.price
    pub.sell_drink(drink)
  end

  def get_age
    return @age
  end
end
