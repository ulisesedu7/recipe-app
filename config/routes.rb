Rails.application.routes.draw do
  resources :foods
  resources :recipes
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Root for the Shoping list
  get get '/shopping_list', to: 'foods#shop'

  # Defines the root path route ("/")
  # root "articles#index"
end
