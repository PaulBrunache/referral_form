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
    get 'manage-admins', to: "dashboard#manage_admins"
    get 'leaderboard', to: "dashboard#leaderboard"
  end
  get 'logout', to: 'devise/sessions#destroy', as: :signout

  devise_for :admins, path: "",
  path_names: { sign_in: 'admin', sign_up: 'add-admin' }

  # devise_scope :admins do
  #   root to: "admin/dashboard#index" # This is the root path of the user when you are logged in
  # end

  # root to: "admin/dashboard#index"
end
