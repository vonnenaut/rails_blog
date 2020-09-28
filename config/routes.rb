<<<<<<< HEAD
Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
=======
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  devise_for :users
>>>>>>> 8e02132f68a9b3b50dd8e85a4c2f34d50c1fa11c
  get 'articles/index'

  resources :articles do
    resources :comments
  end
  
  root 'articles#index'
<<<<<<< HEAD
end
=======
end
>>>>>>> 8e02132f68a9b3b50dd8e85a4c2f34d50c1fa11c
