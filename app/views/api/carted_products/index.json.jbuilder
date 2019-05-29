json.array! @carted_products.each do |carted_product|
  json.id carted_product.id
  json.quantity carted_product.quantity
  json.status carted_product.status
  json.user carted_product.user.name
  json.product carted_product.product
  
end