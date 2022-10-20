Rails.application.routes.draw do
  devise_for :users
  resources :foods
  resources :recipes

  get '/public_recipes', to: 'recipes#public_recipes'



  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Root for the Shoping list
  get get '/shopping_list', to: 'foods#shop'

  # Defines the root path route ("/")
  root "recipes#public_recipes"
end
