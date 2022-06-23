Rails.application.routes.draw do
  resources :categories
  get 'categories/index'
  get 'categories/edit'
  get 'categories/new'
  get 'categories/show'
  root "home#index"
   get "/home", to: "home#index"
   resources :posts
   
   
   

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
