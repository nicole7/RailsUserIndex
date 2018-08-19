Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  # authenticated :user do
  #   root 'users#show', as: :authenticated_root
  # end
  root 'users#index'
end
