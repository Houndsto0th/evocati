Rails.application.routes.draw do

resources :users

get '/Members' => 'users#index', as: :members

root 'pages#index'
end
