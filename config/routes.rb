Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  post 'users', to: 'users#create', as: 'users'
  resources :favos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
