class Api::FoodCalendarController < ApplicationController
  skip_before_action :verify_authenticity_token

  def get_food_calendar
    res = []
    ['MORNING', 'NOON', 'EVENING'].each do |time|
      time_res = {}
      ['monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday'].each do |day|
        time_res[day] = Dish.get_dish_by_day_of_week(day, time)
      end
      time_res['timeOfDay'] = time
      res.push(time_res)
    end
    render json: res
  end
end