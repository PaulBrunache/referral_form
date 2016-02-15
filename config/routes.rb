Rails.application.routes.draw do
  get 'refer/index'

  resources :recommendations
  resources :employees
  root 'employees#new'

end
