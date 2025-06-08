class AuthController < ApplicationController
  skip_before_action :verify_authenticity_token
  rate_limit to: 10, within: 3.minutes, only: :user_login, with: -> { redirect_to new_session_url, alert: "Try again later." }


  def user_login
    credentials = params.permit( :email_address, :password )

    if user = User.authenticate_by(email_address: credentials[:email_address], password: credentials[:password])
      token = JWT.encode( { user_id: user.id }, ENV.fetch("JWT_SECRET_KEY"), "HS256")
      set_cookie(token)
      render json: { token: token, message: "Logged in successfully.", user: user.slice( :id, :email_address, :name ) }, status: :ok
    else
      Rails.logger.info("Authentication failed for email: #{params[:email_address]}")
      render json: { error: "Invalid email address or password." }, status: :unauthorized
    end
  end

  def set_cookie(token)
    cookies.signed[:jwt] = {
      value: token,
      httponly: true,
      # secure: Rails.env.production?,
      secure: false,
      same_site: :lax,
      expires: 24.hours.from_now
    }
    # Rails.logger.info("Cookie set to: #{cookies}")
  end

end