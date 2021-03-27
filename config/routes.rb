Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end

  root to: 'homes#top'
  resources :users do
    resource :relationships, only: [:create, :destroy]
  end
  resources :items do
    resource :favorites, only: [:create, :destroy]
    resources :item_comments
  end
end