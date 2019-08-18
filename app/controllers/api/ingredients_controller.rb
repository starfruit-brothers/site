# frozen_string_literal: true

class Api::IngredientsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @nutrients = Ingredient.all
    res = []
    Ingredient.all.each do |ingredient|
      res.push(ingredient.as_json_with_nutrient)
    end
    render json: res
  end

  def create
    ingredient = Ingredient.create!(name: params[:name], non_edible_percentage: params[:non_edible_percentage])
    render json: ingredient
  end

end
