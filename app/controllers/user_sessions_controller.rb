class UserSessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    root_path = '/'
    puts 'create jusst executed'
    @user = User.find_by(name: params[:user][:name])
    puts "user password from form's body #{params[:user][:password]}"

    # puts "authenticate value: #{@user.authenticate(params[:user][:password])}"
    if @user && @user.authenticate(params[:user][:password])
      puts '---------------------> here <--------------------'
      puts "User if: #{@user.id}"
      session[:user_id] = @user.id
      redirect_to root_path
    else
      flash[:alert] = 'Login failed'
      redirect_to new_user_session_path
    end
  end

  def destroy
    root_path = '/'
    session[:user_id] = nil
    redirect_to root_path
  end
end
