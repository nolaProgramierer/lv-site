Rails.application.routes.draw do
  root                 'welcome#index'
  get     'login'  =>  'sessions#new'
  post    'login'  =>  'sessions#create'
  delete  'logout' =>  'sessions#destroy'
  resources       :users
  resources       :articles
end
