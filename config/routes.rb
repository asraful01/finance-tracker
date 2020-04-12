Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root 'welcome#index'
get 'my_portfolio', to:'users#my_portfolio'
get 'my_friends', to:'users#my_friends'
resources :user_stocks, only: [:create, :destroy]

get 'search_stock', to:'stocks#search'

get 'search_friend', to:'users#search'
resources :friendships, only: [:create, :destroy]

resources :users, only:[:show]


end
