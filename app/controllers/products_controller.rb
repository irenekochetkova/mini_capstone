class ProductsController < ApplicationController

  def all_products
    products = Product.all
    render json: products.as_json
  end

  def product_1
    product_1 = Product.find_by(id: 1)
    render json: product_1.as_json
  end

  def product_2
    product_2 = Product.find_by(id: 2)
    render json: product_2.as_json
  end
end
