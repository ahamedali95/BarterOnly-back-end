class Api::V1::SessionsController < ApplicationController
  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      payload = {
        username: @user.username,
        userId: @user.id
      }
      token = JWT.encode payload, ENV["JWT_SECRET"], "HS256"

      #We render both the token and the user id so that we do not have to
      #decode on the client side to get the user id. Very efficient!
      render json: {
        token: token,
        userId: @user.id
      }
    else
      render json: {
        errors: "Those credentials don't match"
      }, status: :unauthorized
    end
  end
end
