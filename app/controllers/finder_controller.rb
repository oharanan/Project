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
  
end
