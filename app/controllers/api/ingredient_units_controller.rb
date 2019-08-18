# frozen_string_literal: true

class Api::IngredientUnitsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @nutrients = IngredientUnit.all
    render json: IngredientUnit.all
  end

  def create
    ingredient_unit = IngredientUnit.create!(
      name: params[:name],
      amount: params[:amount],
      ingredient_id: params[:ingredient_id]
    )
    render json: ingredient_unit
  end

end
