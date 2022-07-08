class OrdersController < ApplicationController

    def create
      @cart = Cart.find(params[:id])
      @line_items = @cart.line_items  #LineItem.find_by(cart_id: params[:id])
      order = Order.create(user_id: session[:user_id])
      @line_items.update(order_id: order.id)
      @cart.delete
      flash[:message] = "Your order has been placed"
      redirect_to '/shopping'
    end
    def index
      @orders = Order.all
    end
  end