class CartedProductsController < ApplicationController

  def index
    

    carted_product = current_user.carted_products.where(status: "carted")

    render json: carted_products.as_json
   

  end

  def create
    carted_product = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "created"
      )

    if carted_product.save
      render json: carted_product.as_json
    else
      render json: {errors: carted_product.errors.full_messages}, status: 422
   end
  end

    def destroy
      carted_product = CartedProduct.find_by(id: params[:id])
      carted_product.status = "removed"
      carted_product.save
      render json: {status: "Carted Product successfully removed!"}
    end

end
