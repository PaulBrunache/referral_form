Rails.application.routes.draw do
  get '/leaderboard', to: "point_tracker#leaderboard"

  get '/refer', to: 'refer#index'

  resources :recommendations
  resources :employees
  root 'employees#new'

end
