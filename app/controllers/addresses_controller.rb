class AddressesController < ApplicationController
  before_action :check_login
  def create
    @address = Address.new(address_params)
    @address.user_id = session[:user_id]
    @address.save
    redirect_to "/shopping"
  end
  def new
    @address = Address.new
  end
  def show
    @address = Address.all
  end
  def index
    @address = Address.where(user_id: session[:user_id])
  end
  private
  def address_params
    params.require(:address).permit(:address_id, :address_line_1, :address_line_2, :city,:state, :zip)
end
end
