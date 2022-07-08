class LineItemsController < ApplicationController
      def show
          @cart = Cart.where(user_id: session[:user_id]).first
          @addresses = Address.where(user_id:session[:user_id])
          @line_items = @cart.line_items
          # if @cart.line_items.blank?
          #   flash[:notice] = " Please add line items"
          # else
          #   @line_items = @cart.line_items
          # end
          #   redirect_to "/lineitems"
          @line_item = LineItem.all
      end
      def create
          @products = Product.find(params[:line_item][:product_id])
          @cart = current_cart
          @line_item = @cart.add_product(@product.id)    
      end
      # def destroy
      #   @line_item = LineItem.find(params[:id])
      #   @line_item.destroy
      #   redirect_to cart_path(@current_cart)
      # end  
   
      private
        def line_item_params
          params.require(:line_item).permit(:quantity,:product_id, :cart_id, :price,:image_url)
        end
  end
