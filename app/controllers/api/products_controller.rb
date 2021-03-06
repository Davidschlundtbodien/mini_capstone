class Api::ProductsController < ApplicationController
  
  before_action :authenticate_admin, except: [:show, :index]


  def index
    @products = Product.all.order(:id)
    
    if params[:category]
      category = Category.find_by(name: params[:category])
      @products = category.products
    end

    render "index.json.jbuilder"
  end

  def show
    @product = Product.find(params[:id])
    render "show.json.jbuilder"
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      )

    if @product.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @product.errors.full_messages}, status: :not_acceptable
    end  
  end

  def update
    @product = Product.find(params[:id])

    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.description = params[:description] || @product.description
    @product.in_stock = params[:in_stock] || @product.in_stock
    
    if @product.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @product.errors.full_messages}, status: :not_acceptable
    end  
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    render json: {message: "Product removed from database."}
  end

end
