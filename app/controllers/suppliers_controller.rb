class SuppliersController < ApplicationController

  def index
    suppliers = Supplier.all.order(id: :asc)
    render json: suppliers.as_json
  end

  def show
    supplier = Supplier.find_by(id: params[:id])
    render json: supplier.as_json
  end

  def create
    supplier = Supplier.new(
      name: params[:name],
      email: params[:email],
      phone_number: params[:phone_number]
      
      )

    if supplier.save
      render json: supplier.as_json
    else
      render json: { errors: supplier.errors.full_messages, status: :unprocessable_entity }
    end
  end

  def update
    supplier = Supplier.find_by(id: params[:id])
    supplier.update(
    name: params[:name] || supplier.name,
    email: params[:email] || supplier.email,
    phone_number: params[:phone_number] || supplier.phone_number
    )
    render json: supplier.as_json
  end

  def destroy
    supplier = Supplier.find_by(id: params[:id])
    supplier.destroy
    render json: {message: "Supplier successfully destroed."}
  end

end
