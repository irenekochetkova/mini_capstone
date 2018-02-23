class ProductsController < ApplicationController

  before_action :authenticate_admin, except: [:index, :show]

  def index
    

    products = Product.all.order(id: :asc)

    search_term = params[:search]
    if search_term
      products = products.where("title LIKE ?", "%#{search_term}%")
    end

    price_sort = params[:price_sort]
    if price_sort
      products = Product.all.order(price: :asc)
    end

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
      availability: params[:availability],
      supplier_id: params[:supplier_id]     
      )    
    if product.save
      render json: product.as_json
    else
      render json: {errors: product.errors.full_messages}, status: 422
   end
  
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
        if product.save
          render json: product.as_json
        else
          render json: {errors: product.errors.full_messages, status: :unprocessable_entity}
        end
      

  end

  def destroy
    
    product = Product.find_by(id: params[:id])
    product.destroy
    render json: {message: "Successfully destroyed product ##{product.id}"}
  
end

end
