class UsersController < ApplicationController
  before_action :authorize_request
  # skip_forgery_protection

  def new
    @user = User.new
  end

  def get_current_user
    render json: @current_user
  end

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
