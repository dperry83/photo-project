class UserController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  def create
    user = User.new(user_params)
    if user.save
      render json: user, status: :created
    else
      render json: { error: user.errors.full_messages }, 
      status: :unprocessable_entity
    end
  end

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
