Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  #temp about page
  get "about", to: "about#index"

  #set homepage to root
  root to: "home#index"

  #pricing page
  get "pricing", to: "pricing#index"

  #Coverage page
  get "coverage", to: "coverage#index"

  #billing page (will later redirect to external site)
  get "billing", to: "billing#index"

  #support page
  get "support", to: "support#index"

  #main about page
  get "aboutmain", to: "aboutmain#index"

  #contact us page page
  get "contact", to: "contact#index"

  #legal information page
  get "legal", to: "legal#index"

  #packages page
  get "packages", to: "packages#index"

  #business info page
  get "business", to: "business#index"

  #acp info page

  get "acp", to: "acp#index"


  # Defines the root path route ("/")
  # root "articles#index"
end
