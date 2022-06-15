Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  #temp about page
  get "about", to: "about#index"

  #set homepage to root
  root to: "home#index"

  # Defines the root path route ("/")
  # root "articles#index"
end
