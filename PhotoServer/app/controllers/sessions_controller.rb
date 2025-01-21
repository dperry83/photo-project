class SessionsController < ApplicationController
  allow_unauthenticated_access only: %i[ new create ]
  rate_limit to: 10, within: 3.minutes, only: :create, with: -> { redirect_to new_session_url, alert: "Try again later." }
  include Authentication

  def new
  end

  def create
    # if (user = User.authenticate_by(params.permit(:email_address, :password)))
    if (@user = User.authenticate_by(session_params))
      start_new_session_for user
      redirect_to after_authentication_url, alert: "You've successfully logged in, #{user.name}"
    else
      Rails.logger.info("Authentication failed for email: #{params[:email_address]}")
      redirect_to new_session_path, alert: "Try another email address or password."
    end
  end

  def session_params
    params.require(:user).permit(:email_address, :password)
  end
  def destroy
    terminate_session
    redirect_to new_session_path
  end
end
