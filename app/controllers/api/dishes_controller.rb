# frozen_string_literal: true

class Api::DishesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @dishes = Dish.all
    res = []
    Dish.all.each do |dish|
      res.push(dish.as_json_with_nutrient_map)
    end

    render json: res
  end

  def create
    dish = Dish.create!(name: params[:name], ration: params[:ration])
    dish_ingredient_details = params[:dishIngredientDetails].to_a
    dish_ingredient_details.each do |e|
      dish_ingredient_detail = DishIngredientDetail.create!(
        dish_id: dish.id,
        ingredient_id: e['ingredientId'],
        amount: e['amount']
      )
      dish.dish_ingredient_details << dish_ingredient_detail
    end

    render json: dish
  end

end
