Rails.application.routes.draw do
  
  get 'pages/home'

  get 'pages/about'

  get 'pages/blog'

  get 'pages/gallery'

  get 'pages/contact'

  devise_for :users
  
  resources :posts
   root 'posts#index'
   
end
