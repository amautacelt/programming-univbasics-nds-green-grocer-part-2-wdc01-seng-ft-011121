require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  
  
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
  
  
  new_cart = consolidate_cart(cart)
  couped_cart = apply_coupons(new_cart, coupons)
  total = apply_clearance(couped_cart).sum do |e|
    (e[:price] * e[:count]).round(2)
  end
  if total > 100
    (total = total *= 0.90).round(2)
  end
  total
  
end
