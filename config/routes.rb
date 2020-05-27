Rails.application.routes.draw do
  root 'static_pages#home'
  # custom route - http verb url endpoint
  get '/about', to: 'static_pages#about'
  resources :pages 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end