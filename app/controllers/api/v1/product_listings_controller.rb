class Api::V1::ProductListingsController < ApplicationController
  def index
    @product_listings = ProductListing.all
    render json: @product_listings
  end

  def create
  end

  def update
  end

  def delete
  end
end
