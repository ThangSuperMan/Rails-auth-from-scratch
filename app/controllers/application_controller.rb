class ApplicationController < ActionController::Base
  # Help html can use this helper method
  helper_method :current_user

  def current_user
    @current_user ||= session[:user_id] && User.find_by(id: session[:user_id])
    puts "current user :>> #{@current_user}"
    return @current_user
  end
end
