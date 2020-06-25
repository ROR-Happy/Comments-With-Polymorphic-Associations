Rails.application.routes.draw do
  resources :books do
    resources :comments, module: :books
  end
  resources :posts do
    resources :comments, module: :posts
  end
  devise_for :users
  root 'posts#index'
end
