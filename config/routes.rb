Rails.application.routes.draw do
  get "/all_products" => "products#all_products"
 
  get "/product" => "products#one_product_method"
  get "/product/:one_product" => "products#one_product_method"

end
