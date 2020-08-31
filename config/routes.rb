Rails.application.routes.draw do
  get 'bucket_lists/index'
  get 'bucket_lists/show'
  get 'bucket_lists/new'
  get 'bucket_lists/edit'
  get 'index/show'
  get 'index/new'
  get 'index/edit'
  root 'home#index'
  devise_for :users

  resources :home
  resources :todos
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

