Rails.application.routes.draw do
  root                 'welcome#index'
  get     'login'  =>  'sessions#new'
  post    'login'  =>  'sessions#create'
  delete  'logout' =>  'sessions#destroy'
  resources       :users
  resources       :articles

  resources       :welcome 

  # match '/contacts', to: 'contacts#new', via: 'post'
  # resources :contacts, as: 'welcome'
end
