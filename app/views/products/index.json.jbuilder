json.products @products do |product|
  json.id product.id
  json.name product.name
  json.avatar product.avatar
  json.image product.image
  json.price product.price
end