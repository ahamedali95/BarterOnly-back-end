class Api::V1::UsersController < ApplicationController
  before_action :requires_login, only: [:user_product_listings]
  before_action :requires_user_match, only: [:user_product_listings]

  def index
    @users = User.all
    render json: @users
  end

  def create
    @user = User.new(get_params)

    if @user.valid?
      @user.save

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
        errors: @user.errors.full_messages
      }, status: :unprocessable_entity
    end
  end

  #THIS IS Authorization!!!!!
  #It is required to check the user id from the payload with the user id in requested
  #api link. For example,
  #API LINK: http://localhost:3001/api/v1/users/2/product_listings
  #Let say the payload contains the id of 32

  #Then what happens is the user who requested this information even if
  #they are not user number 2, they will receive all the product listings of
  #user number 2.

  #WHY?

  #It is because we checking whether a token can be decoded or not in the
  #require_login method in the application controller.

  def user_product_listings
    render json: @user.product_listings
  end

  private

  def get_params
    params.permit(
      :first_name,
      :last_name,
      :location,
      :image,
      :username,
      :password,
      :password_confirmation
    )
  end
end
