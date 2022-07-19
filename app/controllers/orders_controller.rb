class OrdersController < ApplicationController
  before_action :check_login
    def create
      @cart = Cart.find(params[:id])
      @line_items = @cart.line_items  #LineItem.find_by(cart_id: params[:id])
      address = Address.find(params[:address_id])
      order = Order.create(user_id: session[:user_id], order_status: "Order Placed", final_price: 150 , address_id: address.id )
      @line_items.update(order_id: order.id)
      @cart.delete
      flash[:message] = "Order Placed"
      redirect_to '/shopping'
    end

    def index
      @orders = Order.where(user_id:session[:user_id])
    end
  end