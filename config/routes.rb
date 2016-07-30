Rails.application.routes.draw do

  root to:'pages#home'
  post 'authenticate_user', to: 'pages#authenticate_user'
  post 'validate_admin', to: 'admin/dashboard#create_admin'
  post 'reset_admin', to: 'admin/dashboard#reset_admin'
  resources :departments
  resources :positions
  resources :job_statuses
  resources :recommendations
  resources :employees
  resources :job_statuses

  namespace :admin do
    get 'dashboard', to: "dashboard#index"
    get 'referrals', to: "dashboard#referrals"
    get 'manage', to: "dashboard#manage_admin"
    get 'leaderboard', to: "dashboard#leaderboard"
  end

  devise_for :admins, path: "",
  path_names: { sign_in: 'admin',sign_out: 'logout' }

end
