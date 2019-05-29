class Api::CartedProductsController < ApplicationController
  def create
    @carted_products = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "carted")

    if @carted_products.save
      render json: {message: "Added to cart."}
    else 
      render json: {errors: @carted_products.errors.full_messages}, status: :not_acceptable
    end
    
  end

  def index
    @carted_products = current_user.carted_products.where(status: "carted")
    render "index.json.jbuilder"
    
  end
end
