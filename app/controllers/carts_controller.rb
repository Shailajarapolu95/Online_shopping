class CartsController < ApplicationController
    before_action :check_login
    def add_to_cart
        product = Product.find(params[:id])
        cart = Cart.where(user_id:session[:user_id]).first
        if cart.blank?
           cart = Cart.new(user_id:session[:user_id])
           cart.save
        end
        line_item = LineItem.new(quantity: 1, product_id: product.id, cart_id: cart.id, price:product.price , image_url: product.image_url )
        line_item.save
        flash[:notice]="Successfully added to the cart"
        redirect_to shopping_path
    end

    # def destroy
    #     cart = Cart.where(user_id:session[:user_id]).first
    #    cart.destroy
    # end
end