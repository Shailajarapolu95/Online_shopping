class ApplicationController < ActionController::Base
    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
    helper_method :current_user
    def check_login
        if current_user.blank?
           redirect_to '/login'
         else
            true
        end
    end
end
