Rails.application.routes.draw do
  get 'items/new'
  get 'items/create'
  get 'users/index'
  get 'users/show'
  get 'users/edit'
  get 'users/update'
  devise_for :users

  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end

  root to: 'homes#top'
  resources :users
  resources :items
end