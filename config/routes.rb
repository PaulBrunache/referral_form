Rails.application.routes.draw do
  get '/refer', to: 'refer#index'

  resources :recommendations
  resources :employees
  root 'employees#new'

end
