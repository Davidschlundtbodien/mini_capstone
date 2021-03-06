class Api::OrdersController < ApplicationController

  before_action :authenticate_user

  def index
    @orders = current_user.orders
    render 'index.json.jbuilder'
  end

  def show
    @order = Order.find(params[:id])
    render 'show.json.jbuilder'
  end

  def create
    product = Product.find(params[:product_id])
    subtotal = product.price * params[:quantity].to_i
    tax = subtotal * 0.09
    total = subtotal + tax
    
    order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: subtotal,
      tax:  tax,
      total: total
    )

    if order.save
      render json: {message: 'Order has been placed!'}, status: :created
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end    
    
  end

end
