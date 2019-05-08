Rails.application.routes.draw do
  namespace :api do
    get "/all_products" => "products#all_products_action"
    get "/saison" => "products#saison"
    get "/bier_de_garde" => "products#bier_de_garde"
    get "/gueuze" => "products#gueuze"
  end
end
