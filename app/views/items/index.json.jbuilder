json.item @items do |item|
  json.extract! item, :id, :quantity
  json.cart item.cart_id
  json.product item.product_id
end