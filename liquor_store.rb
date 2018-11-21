require './liquor.rb'

class Shopping_Cart

  @@shopping_cart = []

  def self.show_content
    return @@shopping_cart
  end


  def self.add_product(wine)
    @@shopping_cart << wine
    return @@shopping_cart
  end

  def self.remove_product(wine)
    @@shopping_cart.delete(wine)
      return @@shopping_cart
  end

  def self.total_cost_before_tax
    sum = 0
      @@shopping_cart.each do |wine|
        sum += wine.price
      end
    return sum
  end

  def self.total_cost_after_tax
    var = 0
      @@shopping_cart.each do |wine|
        var += wine.calculate_total_price
      end
     return var
  end

end

my_cart = Shopping_Cart.new
puts"__"
wine1=Wine.new("Red", 10)
wine2=Wine.new("White", 12)
Shopping_Cart.add_product(wine1)
Shopping_Cart.add_product(wine2)
puts Shopping_Cart.show_content
puts Shopping_Cart.total_cost_before_tax
puts Shopping_Cart.total_cost_after_tax
