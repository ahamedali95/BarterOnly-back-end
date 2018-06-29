class Api::V1::CategoriesController < ApplicationController
  def index
    @categories = Category.all
    render json: @categories
  end

  def create
  end
end
