Rails.application.routes.draw do
  root 'home#index'
  get 'home/about'
  get 'home/contact'
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
