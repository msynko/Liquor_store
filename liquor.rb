class Wine

def initialize(name, price)
  @name = name
  @price = price
  @tax_rate = 0.13
end

def name
  @name
end

def price
  @price
end

def tax_rate
  @tax_rate
end

def calculate_total_price
  total_price = price + (price * tax_rate)
  return total_price
 end
end
