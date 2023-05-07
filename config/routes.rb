Rails.application.routes.draw do
  get 'users/top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'users#top'

  resources :users, only:[:create, :show, :index]
  resources :posts, only:[:create, :show, :new]
end
