Rails.application.routes.draw do
  
  get 'pages/home'

  get 'pages/about'

  get 'pages/blog'

  get 'pages/gallery'

  match 'contacts' =>  'pages#contact', via: [:post]
  
  match '/contact' => 'pages#new_contact', via: [:get, :post]
   
  devise_for :users
  
  resources :posts
   root 'posts#index'
   
end
