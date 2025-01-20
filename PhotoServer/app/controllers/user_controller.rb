class UserController < ApplicationController
  # do not require authentication to create a new
  skip_before_action :require_authentication, only: [ :create ]

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
    params.require(:user).permit(:email_address, :password, :name)
  end
end
