require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  
  coupon_cart = []
  cart.each do |cart_item|
    coupons.each do |coupon_item|
     if cart_item[:item] == coupon_item[:item] && cart_item[:count] >= coupon_item[:num]
      discounted_item = {:item => "#{cart_item[:item]} W/COUPON", :price => coupon_item[:cost] / coupon_item[:num], :clearance => cart_item[:clearance], :count => coupon_item[:num]}
      cart_item[:count] = cart_item[:count] - coupon_item[:num]
      if  cart_item[:count] > 0
        remainder_it
def apply_clearance(cart)
  cart.map do |cart_item|
    if cart_item[:clearance]
      cart_item[:price] *= 0.80
      cart_item[:price].round(2)
    end
  end
  cart
  
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
