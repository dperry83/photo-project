class ApiController < ApplicationController
  skip_before_action :require_authentication

  def status
    render json: { message: "Hello from Rails" }
  end
end