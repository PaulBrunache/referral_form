Rails.application.routes.draw do

  root to:'pages#home'
  post 'verify', to: 'pages#authenticate_user'
  resources :departments
  resources :positions
  resources :job_statuses
  resources :recommendations
  resources :employees
  resources :job_statuses

  namespace :admin do
    get 'dashboard', to: "dashboard#index"
    get 'referrals', to: "dashboard#referrals"
    get 'edit', to: "dashboard#edit_admin"
    get 'new', to: "dashboard#new_admin"
    get 'leaderboard', to: "dashboard#leaderboard"
  end

  devise_for :admins, path: "",
  path_names: { sign_in: 'admin',sign_out: 'logout' }

  # devise_scope :admins do
  #   root to: "admin/dashboard#index" # This is the root path of the user when you are logged in
  # end

  # root to: "admin/dashboard#index"
end
