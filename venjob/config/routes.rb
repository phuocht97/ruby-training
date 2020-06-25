Rails.application.routes.draw do
  resources :scores
  get 'static_pages/home', to:'static_pages#home'
  get 'static_pages/def_home'
  get 'static_pages/help'
  get 'static_pages/about'
  get 'static_pages/def_help'
  get 'static_pages/application', to:'static_pages#application'
  get 'phuoc/index'
  get 'hello', to:'welcomes#hello'
  resources :users

  get 'alo/render_html'
  get 'alo/alo1', to:'alo#alo1'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
