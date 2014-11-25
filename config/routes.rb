Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  root to: 'finder#index'
  
  get 'contact' => 'finder#contact', as: 'contact'
  
  get 'about' => 'finder#about', as: 'about'
  
  get 'categories' => 'finder#category', as: 'category'
  
  get 'products' => 'finder#product', as: 'products'
  
  get 'product/:id' => 'finder#show', as: 'product'
  
  get 'products/new' => 'finder#new', as: 'new'
  
  get 'products/onsale' => 'finder#onsale', as: 'onsale'
  
  get 'products/updated' => 'finder#updated', as: 'updated'
  
  get 'products/wall_lamps' => 'finder#wall_lamp', as: 'wall_lamp'
  
  get 'products/celling_lamps' => 'finder#celling_lamp', as: 'celling_lamp'
  
  get 'products/floor_lamps' => 'finder#floor_lamp', as: 'floor_lamp'
  
  get 'products/table_lamps' => 'finder#table_lamp', as: 'table_lamp'
  
  get 'products/flower_lamps' => 'finder#flower_lamp', as: 'flower_lamp'
  
end
