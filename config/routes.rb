Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, except: :destroy
  resources :madlibs, except: :destroy
  resources :words, only: [:index, :new, :create]
  # resources :user_vocabs, except: [:update, :destroy]

  get '/login', to: 'sessions#new', as: 'login'
  post '/sessions', to: 'sessions#create', as: 'sessions'
end
