Rails.application.routes.draw do
  get 'films/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  root 'pages#home'

  resources :users do
    get 'films', to: 'films#user_films', on: :member
  end

  get 'films/compare/:usernames', to: 'films#compare', as: 'compare_films'

  resources :films do
    get 'compare/:usernames', to: 'films#compare', on: :collection, as: 'compare_users'
  end


end
