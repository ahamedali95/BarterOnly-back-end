class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def create
    @user = User.new(get_params)

    if @user.valid?
      @user.save
      render json: @user
    else
      render json: {
        errors: @user.errors.full_messages
      }, status: :unprocessable_entity
    end
  end

  private

  def get_params
    params.permit(
      :first_name,
      :last_name,
      :location,
      :username,
      :password,
      :password_confirmation
    )
  end
end
