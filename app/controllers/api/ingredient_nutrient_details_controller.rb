# frozen_string_literal: true

class Api::IngredientNutrientDetailsController < ApplicationController
  def index
    @ingredient_nutrient_details = IngredientNutrientDetail.all
    render json:  @ingredient_nutrient_details
  end

  def create
    ingredient_nutrient_detail = IngredientNutrientDetail.create!(
      amount: params[:amount],
      nutrient_id: nutrient_id,
      ingredient_id: ingredient_id 
    )
    render json: ingredient_nutrient_detail
  end
end