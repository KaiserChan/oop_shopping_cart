require_relative 'product'

class Shopping_cart < Product

@@cart

  def initialize
    @cart = []
    @total_before_tax = []
    @total_tax =[]
  end

  def check_cart
    @cart
  end

  def get_price
    @cart.each do |product|
      @total_before_tax << product.price
    end
  end

  def total_before_tax
    @total_before_tax.sum.round(2)
  end

  def get_tax
    @cart.each do |product|
      @total_tax << product.price * product.tax_rate
    end
  end

  def total_after_tax
    total_before_tax + @total_tax.sum.round(2)
  end


  def add_to_cart(item)
    @cart << item
  end

  def remove_from_cart(item)
    @cart.delete(item)
  end

end


cart = Shopping_cart.new

steak = Product.new("Flat Iron", 45)
pork = Product.new("Berkshire", 38)
pasta = Product.new("Papardelle", 3.5)
sauce = Product.new("Rose", 1.99)
milk = Product.new("2%", 6.99)
popcorn = Product.new("Sweet and Salty", 5.99)

cart.add_to_cart(steak)
cart.add_to_cart(pork)
cart.add_to_cart(pasta)
cart.add_to_cart(sauce)
cart.add_to_cart(milk)
cart.remove_from_cart(milk)

puts cart.check_cart.inspect

puts cart.get_price.inspect
puts cart.total_before_tax

puts cart.get_tax.inspect
puts cart.total_after_tax
