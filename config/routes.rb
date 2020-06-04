Rails.application.routes.draw do
  get 'checks/full_report'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :checks do
    resources :vulnerabilities, only: %i[new create]
    get 'full-report'
  end


end
