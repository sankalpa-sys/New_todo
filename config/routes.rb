Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :messages
  get 'contacts/new'
  root 'homes#index'
  get 'homes/aboutme'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
