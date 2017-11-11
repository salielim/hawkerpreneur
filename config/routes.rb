Rails.application.routes.draw do
  root 'static_pages#home'
  get  '/info', to: 'static_pages#info'
  get  '/contact', to: 'static_pages#contact'
  # get  '/community', to: 'static_pages#community'
end
