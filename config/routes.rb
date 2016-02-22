Rails.application.routes.draw do

  resources :job_statuses

  namespace :admin do
    get 'dashboard', to: "dashboard#index"
  end

  devise_for :admins, path: "",
  path_names: { sign_in: 'admin', sign_up: 'add-admin' }

  # devise_scope :admins do
  #   root to: "admin/dashboard#index" # This is the root path of the user when you are logged in
  # end

  root to: "employees#new", as: "default_home"

  resources :recommendations
  resources :employees
end
