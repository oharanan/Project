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
end
