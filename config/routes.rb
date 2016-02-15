Rails.application.routes.draw do
  devise_for :admins
  get '/leaderboard', to: "admin_panel#leaderboard"

  resources :recommendations
  resources :employees
  root 'employees#new'

end
