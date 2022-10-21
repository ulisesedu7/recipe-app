Rails.application.routes.draw do
  devise_for :users
  resources :foods
  
  resources :recipes do
    resources :recipe_foods
    get '/add_food/', to: 'recipe_foods#add_food'
    get '/shopping_list', to: 'recipes#shopping_list'
  end

  get '/public_recipes', to: 'recipes#public_recipes'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Root for the Shoping list
  get '/general_shopping_list', to: 'foods#general_shopping_list'

  # Defines the root path route ("/")
  root "recipes#public_recipes"
end
