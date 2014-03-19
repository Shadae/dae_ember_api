json.checkout @checkouts do |checkout|
  json.extract! checkout, :id, :name, :email, :zip, :status, :expiration, :cvv, :cart
  json.cart order.cart_id
end