Rails.application.routes.draw do

  root to: 'visitors#home'
  # Redirects "Devise Controllers" to my own controllers. For the case Devise controller.
  devise_for :users, path_names:{sign_in: 'login', sign_out: 'logout'} ,:controllers => {:sessions => 'devise/sessions', :registrations => 'registrations',
                                      :passwords => 'devise/passwords'}
  resources :users
  resources :categories
  resources :vendors
end
