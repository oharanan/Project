Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  root to: 'finder#index'
  
  get 'contact' => 'finder#contact', as: 'contact'
  
  get 'about' => 'finder#about', as: 'about'
  
  get 'categories' => 'finder#category', as: 'category'
  
  get 'products' => 'finder#product', as: 'products'
  
  get 'product/:id' => 'finder#show', as: 'product'
  
end
