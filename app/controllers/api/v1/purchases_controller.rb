class Api::V1::PurchasesController < ApplicationController
  def index
    @purchases = Purchase.all
    render json: @purchases
  end

  def create
    @purchase = Purchase.new(get_params)

    if @purchase.valid?
      @purchase.save
      render json: @purchase
    else
      render json: {message: "something went wrong"}
    end
  end

  private

  def get_params
    params.require(:purchase).permit(
      :name,
      :description,
      :image,
      :value,
      :condition,
      :location,
      :rating,
      :delivery_method,
      :mode_of_purchase,
      :category_id,
      :user_id,
      :seller_id
    )
  end
end
