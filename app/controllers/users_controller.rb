class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    puts "@user.save:>> #{@user.save}"

    if @user.save
      flash[:notice] = "User created successfully"
      redirect_to users_path
    else
      flash[:alert] = "User not created"
      render :new, status: :unprocessable_entity
    end
  end

  def user_params
    puts 'user_params'
    puts "params.require(:user) :>> #{params.require(:user)}"
    puts "params.require(:user).permit(:name, :password, :password_confirmation) :>> #{params.require(:user).permit(:name, :password, :password_confirmation)}"
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
