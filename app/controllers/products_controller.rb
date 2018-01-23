class ProductsController < ApplicationController

  def index
    products = Product.all
    render json: products.as_json
  end

 
  def show

    product = Product.find_by(id: params[:id])

    render json: product.as_json
  end

  def create
    product = Product.new(
      title: params[:title],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description],
      availability: params[:availability]
      )    
    product.save
    render json: product.as_json
  end

  def update
    product = Product.find_by(id: params[:id])
    product.update(
      title: params[:title] || product.title,
      price: params[:price] || product.price,
      image_url: params[:image_url] || product.image_url,
      description: params[:description] || product.description,
      availability: params[:availability] || product.availability
        )   
    render json: product.as_json
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    render json: {message: "Product successfully destroed."}
  end

end
