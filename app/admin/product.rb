ActiveAdmin.register Product do


  permit_params :name, :price, :stock_quantity, :size, :description, :image


end
