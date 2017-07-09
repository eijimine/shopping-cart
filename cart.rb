require_relative 'product.rb'

class Cart

  @@cart = []

  def self.add_product(product_name, price)
    new_product = Product.new(product_name, price)
    @@cart << new_product
    return new_product
  end

  def self.sum_before_tax
    sum = 0
    @@cart.each do |cart|
      sum += cart.price
    end
    puts "Your cart total before tax is $#{sum}."
  end

  def self.sum_after_tax
    sum = 0
    @@cart.each do |cart|
      sum += cart.price_w_tax
    end
    puts "Your cart total after tax is $#{sum}."
  end

  def self.all
    @@cart
  end

  def self.remove_product(product)
    @@cart.each do |crt|
      if crt.product_name == product
      @@cart.delete(crt)
       end
      end
  end

end
