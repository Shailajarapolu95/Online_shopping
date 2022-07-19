class LineItemsController < ApplicationController
  before_action :check_login
      def show
          @cart = Cart.where(user_id: session[:user_id]).first
          @addresses = Address.where(user_id:session[:user_id])
          @line_item = @cart.line_items
      end
      def create
          @products = Product.find(params[:line_item][:product_id])
          @cart = current_cart
          @line_item = @cart.add_product(@product.id)    
      end 
     
      def destroy
        cart = Cart.where(user_id:session[:user_id]).first
       cart.destroy
       redirect_to "/shopping"
    end

      private
        def line_item_params
          params.require(:line_item).permit(:quantity,:product_id, :cart_id, :price)
        end
  end
