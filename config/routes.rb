Rails.application.routes.draw do
  root 'secret#index'
  resources :secrets, only: [:create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
