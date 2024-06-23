Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :employees
  resources :departments
  resources :bills, only: [:index, :new, :create]

  root 'employees#index'
end
