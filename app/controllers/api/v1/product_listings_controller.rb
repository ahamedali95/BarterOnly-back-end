class Api::V1::ProductListingsController < ApplicationController
  #before_action :requires_login, only: [:index]

  def index
    @product_listings = ProductListing.all
    render json: @product_listings
  end

  def create
    @product_listing = ProductListing.new(get_params)

    if @product_listing.valid?
      @product_listing.save
      render json: @product_listing
    else
      render json: {
        errors: @product_listing.errors.full_messages
      }, status: :unprocessable_entity
    end
  end

  def update
    @product_listing = ProductListing.find(params[:id])

    if @product_listing.update(get_params)
      render json: @product_listing
    else
      render json: {
        errors: @product_listing.errors.full_messages
      }, status: :unprocessable_entity
    end
  end

  def destroy
    @product_listing = ProductListing.find(params[:id])
    @product_listing.destroy
    render json: {message: "Successful Deletion"}
  end

  private

  def get_params
    params.require(:product_listing).permit(
      :name,
      :description,
      :image,
      :value,
      :condition,
      :location,
      :rating,
      :delivery_method,
      :exchange_item,
      :category_id,
      :user_id,
      :isSold
    )
  end
end
