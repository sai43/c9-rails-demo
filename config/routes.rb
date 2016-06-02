Rails.application.routes.draw do
  
  get 'pages/home'

  get 'pages/about'

  get 'pages/blog'

  get 'pages/gallery'

  get 'pages/contact'
  
  match '/contact' => 'pages#contact', via: [:get, :post]
  
  devise_for :users
  
  resources :posts
   root 'posts#index'
   
end
