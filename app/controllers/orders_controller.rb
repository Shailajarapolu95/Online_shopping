class OrdersController < ApplicationController
  def show
    @cart = Cart.where(user_id: session[:user_id]).first
    @line_item = LineItem.all
end
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
    def address
      
    end

  private
    def order_params
      params.require(:order).permit(user_id: user.user_id,actual_price:,final_price:)
    end
  end
