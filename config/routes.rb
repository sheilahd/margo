Rails.application.routes.draw do
  root 'home#index'
  resources :playdates
  devise_for :users
  resources :friends
  # get 'home/index'
  get 'home/about'
 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
