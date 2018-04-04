class Customer

  def initialize(name, wallet, age)
    @name = name
    @wallet = wallet
    @age = age
    @drunk_level = 0
  end

  def name()
    return @name
  end

  def wallet()
    return @wallet
  end

  def get_age
    return @age
  end

  def drunk_level()
    return @drunk_level
  end

  def buy_a_drink(drink)
    @wallet -= drink.price
    @drunk_level += drink.alcohol_level
  end

  def buy_food(food)
    @wallet -= food.price
    @drunk_level -= food.rejuvenation_level
    if @drunk_level < 0
      @drunk_level = 0
    end
  end


end
