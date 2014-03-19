json.item do
  json.extract! @item, :id, :price, :quantity
  json.product @item.product_id
  json.cart @item.cart_id
end