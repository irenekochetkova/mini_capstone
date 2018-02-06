class OrdersController < ApplicationController

      before_action :authenticate_user

    def index
      orders = current_user.orders
      render json: orders.as_json
    end  


    def create
      
      carted_products = current_user.carted_products.where(status: "carted") #array of carted products

    calculated_subtotal = 0
    carted_products.each do |carted_product|
      calculated_subtotal += carted_product.product.price * carted_product.quantity
    end

    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_subtotal + calculated_tax

    order = Order.new(
      user_id: current_user.id,
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total
    )

    if order.save
      carted_products.update_all(status: "purchased", order_id: order.id)
      render json: order.as_json
    else
      render json: {errors: order.errors.full_messages}, status: 422
    end
      # product = Product.find_by(id: params[:product_id])
      # calculated_subtotal = product.price * params[:quantity].to_i
      # calculated_tax = calculated_subtotal * 0.09
      # calculated_total = calculated_subtotal + calculated_tax
    
      # order = Order.new(
      #   user_id: current_user.id,
      #   quantity: params[:quantity],
      #   product_id: params[:product_id],
      #   subtotal: calculated_subtotal,
      #   tax: calculated_tax,
      #   total: calculated_total
      #   # subtotal: order.product.price,
      #   # tax: 
      #   # total:
      #   )
      # # order.subtotall = order.product.price
      # if order.save
      #   render json: order.as_json
      # else
      #   render json: { errors: order.errors.full_messages, status: :unprocessable_entity }
      # end

    end
end
