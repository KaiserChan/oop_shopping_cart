class Product

  @@products = []
  @@tax_rate = 0.13

  def initialize(name, price)
    @name = name
    @price = price
    @tax_rate = @@tax_rate
  end

  # def self.add(name, price)
  #   new_product = Product.new(name, price)
  #   @@products << new_product
  # end

  def self.all_products
    @@products
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

  def final_price
    final_price = price * (1 + tax_rate)
    return final_price
  end

end

steak = Product.new("Flat Iron", 45)
pork = Product.new("Berkshire", 38)

# puts Product.all_products.inspect
puts steak.final_price.round(2)
