Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'articles/index'

  resources :articles do
    resources :comments
  end
  
  root 'articles#index'
end
