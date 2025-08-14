Rails.application.routes.draw do

  get 'login', to: 'login#login'
  post 'login', to: 'login#authenticate'
  
  root 'home#index'
end
