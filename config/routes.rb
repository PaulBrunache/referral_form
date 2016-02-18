Rails.application.routes.draw do

  resources :job_statuses
  namespace :admin do
    get 'dashboard', to: "dashboard#index"
  end

  devise_for :admins, path: "", 
  path_names: { sign_in: 'admin', sign_out: 'bye', sign_up: 'add-admin' }
  
  root 'employees#new'

  resources :recommendations
  resources :employees
end
