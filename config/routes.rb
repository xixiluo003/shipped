Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "jobs#index"
  get "/" => "jobs#index"

  resources :boats
  resources :ports
  resources :jobs do
    resources :job_boats
  end

end