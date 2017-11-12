Rails.application.routes.draw do
  devise_for :users, :controllers =>{ :omniauth_callbacks => "omniauth_callbacks",
                                      :registrations => 'registrations' }
  root 'static_pages#home'
  get  '/info', to: 'static_pages#info'
  get  '/contact', to: 'static_pages#contact'
  get  '/posts', to: 'microposts#index'
  resources :users, only: [:index, :show]
  resources :microposts, only: [:create, :index, :destroy]
end
