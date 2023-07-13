class UsersController < ApplicationController
  def index
    @users = User.all
    flash[:notice] = "User created successfully"
    flash[:alert] = "Ahihi"
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_Prams)

    if user.save
      flash[:notice] = "User created successfully"
      redirect_to users_path
    else
      flash[:alert] = "User not created"
      # Render new html page and return status code
      render :new, status: :unprocessable_entity
    end
  end
end
