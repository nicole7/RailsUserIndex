Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }

  root "users#index"

end
