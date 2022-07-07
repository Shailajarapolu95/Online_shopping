class LineItemsController < ApplicationController
    def index
        @line_item = line_item.all
      end
    
      def show
          @cart = Cart.where(user_id: session[:user_id]).first
          @line_items = @cart.line_items
          @line_item = LineItem.all
      end
      def create
          @products = Product.find(params[:line_item][:product_id])
          @cart = current_cart
          @line_item = @cart.add_product(@product.id)    
      end
      def destroy
        @line_item = LineItem.find(params[:id])
        @line_item.destroy
        redirect_to cart_path(@current_cart)
      end  
   
      private
        def line_item_params
          params.require(:line_item).permit(:quantity,:product_id, :cart_id, :price,:image_url)
        end
  end
