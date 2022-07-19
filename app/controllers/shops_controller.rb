class ShopsController < ApplicationController
  before_action :check_login
  def index
    @products = product.all
  end

  def show
    @cart = Cart.where(user_id: session[:user_id]).first
    @line_items_count = @cart.present? ? @cart.line_items.count : 0 
    @products = Product.all
  end
end
