Rails.application.routes.draw do
  resources :donations
  resources :getters
  get 'dashboard/index'
  get 'dashboard/maps'
  devise_for :users
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
 end
  resources :events
  get 'admin/login'
  get 'home/index'
  root 'home#index'
  post 'admin/login'
  get 'admin/logout'
end
