Rails.application.routes.draw do

    resources :users, only: [:new, :create]
    resource :session, only: [:new, :create, :destroy]

    resources :subs
    resources :posts
    resources :comments

end
