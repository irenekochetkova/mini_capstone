class ProductsController < ApplicationController

  def all_products
    products = Product.all
    render json: products.as_json
  end

 
  def one_product_method

    input_product = Product.find_by(id: params["one_product"])

    render json: input_product.as_json
  end

end
