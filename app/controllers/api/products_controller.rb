class Api::ProductsController < ApplicationController
  def all_products_action
    @products = Product.all
    render 'all_products.json.jbuilder'
  end

  def saison
    @product = Product.find_by(name: "Saison")
    render 'beer_info.json.jbuilder'
  end

  def bier_de_garde
    @product = Product.find_by(name: "Bier de garde")
    render 'beer_info.json.jbuilder'
  end

  def gueuze
    @product = Product.find_by(name: "Gueuze")
    render 'beer_info.json.jbuilder'
  end
end
