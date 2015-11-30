Rails.application.routes.draw do
  resources :comments do
    get 'clear', on: :collection
    get 'public', on: :collection  end
  resources :articles
  post :contact
  root 'articles#index'
end
