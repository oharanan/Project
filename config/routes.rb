Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  root to: 'finder#index'
  
  get 'contact' => 'finder#contact', as: 'contact'
  
  get 'about' => 'finder#about', as: 'about'
  
end
