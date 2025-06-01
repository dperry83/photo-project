class UsersController < ApplicationController
  # do not require authentication to create a new
  skip_before_action :require_authentication, only: [ :new, :create, :user_params ]
  skip_forgery_protection 
  include Authentication

  def new
    @user = User.new
  end

  def get_current_user
    render json: { current_user: @current_user.slice(:id, :email_address, :name) }, status: :ok
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
