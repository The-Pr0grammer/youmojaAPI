Rails.application.routes.draw do
  resources :user_likes
  resources :biz_badges
  resources :badges
  resources :quotes
  resources :user_bizs
  resources :businesses
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
