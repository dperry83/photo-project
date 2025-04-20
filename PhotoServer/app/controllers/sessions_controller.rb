class SessionsController < ApplicationController
  allow_unauthenticated_access only: %i[ new create ]
  rate_limit to: 10, within: 3.minutes, only: :create, with: -> { redirect_to new_session_url, alert: "Try again later." }
  include Authentication

  def new
  end

  def create
    if user = User.authenticate_by(params.permit(:email_address, :password))
      start_new_session_for user
      token = JWT.encode( { user_id: user.id, exp: 24.hours.from_now.to_i }, ENV.fetch("JWT_SECRET_KEY") )
      render json: { token: token, message: "Logged in successfully.", user: user.slice( :name ) }, status: :ok
    else
      Rails.logger.info("Authentication failed for email: #{params[:email_address]}")
      redirect_to new_session_path, alert: "Try another email address or password."
    end
  end

  def destroy
    terminate_session
    redirect_to new_session_path
  end
end
