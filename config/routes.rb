Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :restaurants do
    resources :reviews, only: [ :index, :new, :create ]
  end

   get "reviews/:id", to: "reviews#show"
   get "restaurants/:id", to: "restaurants#show"
end
