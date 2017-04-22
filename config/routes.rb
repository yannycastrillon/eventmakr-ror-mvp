Rails.application.routes.draw do

  root to: 'visitors#index'
  # Redirects "Devise Controllers" to other my own controllers. For the case Devise controller.
  devise_for :users, path_names:{sign_in: 'login', sign_out: 'logout'} ,:controllers => {:sessions => 'devise/sessions', :registrations => 'registrations',
                                      :passwords => 'devise/passwords'}
  resources :users
  resources :categories
end
