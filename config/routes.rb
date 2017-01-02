Rails.application.routes.draw do
  devise_for :users
  
  #root route
  root 'welcome#index'

  
end
