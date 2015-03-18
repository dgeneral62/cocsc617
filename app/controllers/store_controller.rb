# require 'test_helper'
class StoreController < ApplicationController
  def index
    @products = Product.order(:title)

    if (:in_stock).nil?
     flash[:notice] = "No Product in Stock"
    else
     flash[:notice] = "Store in Stock"
    end

    if (:online).nil?
      flash[:notice] = "Online Stock Sold Out"
    else
      flash[:notice] = "Online Stock Available"
    end

    #this is the landing (home) page. When the user visits, we want to remember when he/she visited
    session[:index]=Time.now.to_s

  end

  def last
    @time=session[:index]
  end

end

