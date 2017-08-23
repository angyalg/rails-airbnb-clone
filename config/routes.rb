Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  devise_for :users,
  controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :spaces do
    resources :bookings
  end
  resources :users
  get 'dashboard',  to: 'dashboard#index'
end
