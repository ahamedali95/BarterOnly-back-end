class Api::V1::ProductListingsController < ApplicationController
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
      render json: {error: "something went wrong!"}
    end
  end

  def update
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
      :user_id
    )
  end
end
