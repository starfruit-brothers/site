class Api::DishIngredientCalendarsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    date_meal = DateMealRecord.find_by(
      day_of_week: params[:dayOfWeek].downcase,
      time_of_day: params[:timeOfDay]
    )
    dish = Dish.find_by(name: params[:dishName]);
    e = DishIngredientCalendar.create!(
      amount: params[:amount],
      dish_id: dish.id,
      date_meal_record_id: date_meal.id,
      ingredient_detail: params[:ingredientDetail].to_json
    )
    render json: e
  end

end
