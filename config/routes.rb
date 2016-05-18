Rails.application.routes.draw do
  
  resources :posts
  
  # get 'users/index'

  # get 'users/new'

  # post 'users/create'

  # get 'users/show'

  # get 'users/edit'

  # put 'users/update'

  # delete 'users/destroy'

  # get 'welcome/index'

  # get 'welcome/new'

  # get 'welcome/create'

  # get 'welcome/update'

  # get 'welcome/destroy'

  # get 'home/index'
  
  # get 'home/new'
   root 'posts#index'
end
