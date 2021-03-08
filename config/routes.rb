Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :comment_votes
  resources :user_hearts
  resources :biz_badges
  resources :badges
  resources :comments
  resources :businesses
  # resources :user_bizs
  resources :users do
    collection do
      post 'login'
    end
  end
  resources :user_bizs do
    collection do
      get 'badges'
    end
  end
  
  post 'rails/active_storage/direct_uploads', to: 'direct_uploads#create'
end
