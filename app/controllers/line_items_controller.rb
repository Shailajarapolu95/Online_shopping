class LineItemsController < ApplicationController
      def show
          @cart = Cart.where(user_id: session[:user_id]).first
          @addresses = Address.where(user_id:session[:user_id])
          @line_item = LineItem.all
          @line_items = @cart.line_items
          # if @cart.line_items == nil
          #   redirect_to "/shopping"
          # else
          #   @line_items = @cart.line_items
          # end
      end
      def create
          @products = Product.find(params[:line_item][:product_id])
          @cart = current_cart
          @line_item = @cart.add_product(@product.id)    
      end 
   
      private
        def line_item_params
          params.require(:line_item).permit(:quantity,:product_id, :cart_id, :price,:image_url)
        end
  end
