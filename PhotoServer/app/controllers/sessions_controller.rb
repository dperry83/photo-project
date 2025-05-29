class SessionsController < ApplicationController
  allow_unauthenticated_access only: %i[ new create ]
  skip_before_action :verify_authenticity_token
  before_action :disable_rails_session
  # skip_before_action :reset_session
  rate_limit to: 10, within: 3.minutes, only: :create, with: -> { redirect_to new_session_url, alert: "Try again later." }
  include Authentication

  def new
  end

  def disable_rails_session
    request.session_options[:skip] = true
  end
  def user_login
    credentials = params.permit( :email_address, :password )

    if user = User.authenticate_by(email_address: credentials[:email_address], password: credentials[:password])
      token = JWT.encode( { user_id: user.id }, ENV.fetch("JWT_SECRET_KEY"), "HS256", { typ: "JWT", alg: "HS256" } )
      set_cookie(token: token)
      render json: { token: token, message: "Logged in successfully.", user: user.slice( :id, :email_address, :name ) }, status: :ok
    else
      Rails.logger.info("Authentication failed for email: #{params[:email_address]}")
      render json: { error: "Invalid email address or password." }, status: :unauthorized
    end
  end


  def set_cookie(token:)
    cookies.encrypted[:jwt] = {
      value: token,
      httponly: true,
      # secure: Rails.env.production?,
      secure: false,
      same_site: :lax,
      expires: 24.hours.from_now
    }
    Rails.logger.info("Cookie set to: #{cookies.to_hash}")
  end
  def destroy
    terminate_session
    redirect_to new_session_path
  end
end