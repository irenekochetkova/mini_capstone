Rails.application.routes.draw do
  # get "/single_product" => "product#single_product_method"
  get "/all_products" => "product#all_products"
end
