Blog::Application.routes.draw do

  resources :articles do
    resources :comments
  end
  resources :comments
  resources :users

  root to: 'articles#index'
  
end
