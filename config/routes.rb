Rails.application.routes.draw do

  resources :users
  resources :articles
  root 'welcome#index'

end
