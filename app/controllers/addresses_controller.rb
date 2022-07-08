class AddressesController < ApplicationController
  def create
    address = Address.new(address_params)
    address.user_id = session[:user_id]
    address.save
    redirect_to "/shopping"
  end
  def new
    @address = Address.new
  end
  def show
    @address = Address.all
  end
  def index
    @address = Address.all
  end
  private
  def address_params
    params.require(:address).permit(:address_line_1, :address_line_1, :city,:state, :zip)
end
end
