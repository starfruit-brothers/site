# frozen_string_literal: true

class Api::DishIngredientDetailsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @dish_ingredient_detail = DishIngredientDetail.all
    render json: @dish_ingredient_detail
  end

  def create
    dish_ingredient_detail = DishIngredientDetail.create!(
      dish_id: params[:dishId],
      ingredient_id: params[:ingredientId],
      amount: params[:amount]
    )
    render json: dish_ingredient_detail
  end

end
