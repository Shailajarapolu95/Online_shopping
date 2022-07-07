class SessionsController < ApplicationController
  # before_action :authenticate_user!
  def new
  end

  def create
    Rails.logger.info params
    user = User.find_by_email(params[:name]) #user= User.find_by(email: "rails@gmail.com")
    if user && user.authenticate(params[:password])
      Rails.logger.info("Successfull login")
      session[:user_id] = user.id
      flash[:notice]="Login successful"
      if user.admin==true
        Rails.logger.info("Admin true")
        redirect_to "/products"
      else
        redirect_to "/shopping"
      end
    else
      flash[:notice]="Invalid Email or Password"
      redirect_to '/login'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice]="Logged Out"
    redirect_to '/login'
  end
end
