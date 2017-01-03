Rails.application.routes.draw do
  resources :images
  devise_for :users, :controllers => { :registrations => 'registrations' }
  
  #root route
  root 'welcome#index'

  
end
