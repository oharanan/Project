class FinderController < ApplicationController
  def index
    @products = Product.all    
  end
  
  def contact
    @contacts = ContactUs.all
  end
  
  def about
    @abouts = About.all
  end
  
  def category
    @categories = Category.all
  end
  
  def product
    @products = Product.all
  end
  
  def show
    @product = Product.find(params[:id])
  end
  
  def new
    @products = Product.where(status: 'new')
  end
  
  def onsale
    @products = Product.where(status: 'on sale')
  end
  
  def updated
    @products = Product.where(status: 'recently updated')
  end
  
  def wall_lamp
    @products = Product.where(category_id: '1')
  end
  
  def flower_lamp
    @products = Product.where(category_id: '5')
  end
  
  def celling_lamp
    @products = Product.where(category_id: '2')
  end
  
  def table_lamp
    @products = Product.where(category_id: '4')
  end
  
  def floor_lamp
    @products = Product.where(category_id: '3')
  end
  
  def search_products
    wildcard_keywords = '%' + params[:search_keywords] + '%'
    @products = Product.where("name LIKE ?", wildcard_keywords)    
    render 'product'
  end
  
  def search_categories
    wildcard_keywords = '%' + params[:search_keywords] + '%'
    @categories = Category.where("name LIKE ?", wildcard_keywords)    
    render 'category'
  end
  
  def show_categories
    @categories = Category.all
    @category = Category.find(params[:id])
    @products = @category.products
  end
  
end
