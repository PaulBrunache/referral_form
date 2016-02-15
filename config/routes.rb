Rails.application.routes.draw do
  get 'point_tracker/leaderboard'

  get '/refer', to: 'refer#index'

  resources :recommendations
  resources :employees
  root 'employees#new'

end
