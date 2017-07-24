Rails.application.routes.draw do
  root :to => 'posts#index'

  devise_for :users
  resources :posts, only: [:new,:create,:show,:index] do
    resources :comments, only: [:create]
  end
  get '/welcome/landing'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
