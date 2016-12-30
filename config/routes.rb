Rails.application.routes.draw do
  get 'passwords/new'

  get 'passwords/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'users#new'


  get '/profil', to: 'users#edit', as: :profil
  patch '/profil', to: 'users#update'


  get '/login', to: 'sessions#new', as: :new_session
  post '/login', to: 'sessions#create'
  delete 'logout',to: 'sessions#destroy', as: :destroy_session

  resources :passwords, only: [:new, :create, :update, :edit]

  resources :users, only: [:new, :create] do
    member do
      get 'confirm'
    end
  end

end
