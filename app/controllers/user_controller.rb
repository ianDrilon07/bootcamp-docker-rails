class UserController < ApplicationController
  def index
    @user = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def show 
    @user = Dog.find(params[:id])
  end

  private
  def user_params
    params.require(:user).permit(:firstname, :lastname, :username, :password)
  end
end
