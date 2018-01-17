Rails.application.routes.draw do
  # get "/single_product" => "product#single_product_method"
  get "/all_products" => "products#all_products"
end
