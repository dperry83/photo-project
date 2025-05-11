class ApplicationController < ActionController::Base
  include Authentication
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  # protect_from_forgery with: :null_session, if: -> { request.format.json }

  before_action :authenticate_user!
end
