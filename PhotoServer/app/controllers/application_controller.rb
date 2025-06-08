class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  def authorize_request
    token = cookies.signed[:jwt]
    decoded = JWT.decode(token, ENV.fetch("JWT_SECRET_KEY"), true, { algorithm: "HS256" } )
    @current_user = User.find(decoded[0]["user_id"])

  rescue JWT::DecodeError
    render json: { error: "User not authorized, beeyotch" }, status: :unauthorized

  rescue ActiveRecord::RecordNotFound
    render json: { error: "User not found.  Please register or sign in." }, status: :not_found
  end

end
