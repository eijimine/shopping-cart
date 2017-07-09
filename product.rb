class Product

attr_accessor :product_name, :price, :tax, :price_w_tax

@@tax_amt = 0.01

 def initialize(product_name, price)
    @product_name = product_name
    @price = price
    @tax = price * @@tax_amt
    @price_w_tax = price + (price * @@tax_amt)
 end

end
