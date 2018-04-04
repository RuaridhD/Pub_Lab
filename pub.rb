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

def add_drink(drink1)
@drinks.push(drink1)
end


end
