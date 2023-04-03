class UserController < ApplicationController

  before_action :authenticate_user!

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
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])

    if user.update(user_params)
      redirect_to root_path
    else 
      redirect_back
    end
  end

  def destroy
    @user = User.find(params[:id])
    
  end

  def show 
    @user = User.find(params[:id])
    @user.destroy
    redirect_to root_path
  end

  def email_required?
    unconfirmed_email.blank?
  end

  private
  def user_params
    params.require(:user).permit(:firstname, :lastname, :username, :password)
  end
end
