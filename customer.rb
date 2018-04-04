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

  def buy_a_drink(drink)
    @wallet -= drink.price
  end

  def get_age
    return @age
  end
end
