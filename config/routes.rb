Rails.application.routes.draw do
  get '/leaderboard', to: "admin_panel#leaderboard"

  resources :recommendations
  resources :employees
  root 'employees#new'

end
