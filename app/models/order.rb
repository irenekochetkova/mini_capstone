class Order < ApplicationRecord
    belongs_to :user
    belongs_to :product

  

  # def as_json
  #   {
  #   id: id,
  #   user_id: current_user.id,
  #   quantity: params[:quantity],
  #   product_id: current_product.id,
  #   title: title,
  #   price: price,
  #   subtotal: subtotal,
  #   tax: tax, 
  #   total: total


  #   }
  # end

end
