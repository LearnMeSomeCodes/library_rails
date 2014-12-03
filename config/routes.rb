Rails.application.routes.draw do
  resources :users

  resources :authors
  resources :books do
    get 'favorite', on: :member
  end

  get 'sessions/show_demo'
  get 'sessions/set_demo'

  get  'login'     => "sessions#new"
  get  'logout'    => 'sessions#destroy'
  post 'sessions'  => 'sessions#create'

end
