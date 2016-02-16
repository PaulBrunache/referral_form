Rails.application.routes.draw do

  devise_for :admins, path: "", 
  path_names: { sign_in: 'admin', sign_out: 'bye', sign_up: 'add-admin' }
  
  namespace :admin do
    get '/leaderboard', to: 'admin_panel#leaderboard'
  end
  
  authenticated :admins do
    root 'admin_panel#dashboard', as: :authenticated_root
  end
 
  root 'employees#new'

 

  resources :recommendations
  resources :employees
  

end
