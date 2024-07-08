class AuthController < ApplicationController
  def login
    render json: {
      message: "Login successful"
    }
  end
end
