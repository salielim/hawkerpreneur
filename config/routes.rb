Rails.application.routes.draw do
  devise_for :users, :controllers =>{ :omniauth_callbacks => "omniauth_callbacks",
                                      :registrations => 'registrations' }
  root 'static_pages#home'
  get  '/info', to: 'static_pages#info'
  get  '/contact', to: 'static_pages#contact'
  get  '/hawkers', to: 'static_pages#hawkers'
  get 'tags/:tag', to: 'microposts#index', as: "tag"  
  resources :users, only: [:index, :show]
  resources :microposts, only: [:create, :index, :show, :destroy]
end