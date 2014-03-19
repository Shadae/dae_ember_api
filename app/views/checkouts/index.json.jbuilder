json.checkout @checkouts do |checkout|
  json.extract! checkout, :id, :name, :email, :zip, :status, :expiration, :cvv, :cart
  json.cart checkout.cart_id
end