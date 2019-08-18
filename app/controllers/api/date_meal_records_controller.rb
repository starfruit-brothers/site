# frozen_string_literal: true

class Api::DateMealRecordsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @date_meal_records = DateMealRecord.all
    render json: @date_meal_records
  end

  def create
    date_meal_record = DateMealRecord.create!(
      day_of_week: params[:dayOfWeek],
      time_of_day: params[:timeOfDay],
      dish_id: params[:dishId],
      amount: params[:amount]
    )
    render json: date_meal_record
  end
end
