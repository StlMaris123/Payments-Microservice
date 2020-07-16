Rails.application.routes.draw do
  resources :mobile_payments
  resources :till_numbers
  resources :payments
  root 'payments#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
