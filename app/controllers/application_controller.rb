class ApplicationController < ActionController::Base
  helper_method :current_user
  def current_user
    @current_user ||= cookies[:user_id] && User.find_by(id: cookies[:user_id])
    puts "current user :>> #{@current_user}"
    return @current_user
  end
end
