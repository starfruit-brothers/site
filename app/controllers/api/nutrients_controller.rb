# frozen_string_literal: true

class Api::NutrientsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    @nutrients = Nutrient.all
    render json: Nutrient.all
  end

  def create
    nutrient = Nutrient.create!(name: params[:name], unit: params[:unit])
    render json: nutrient
  end

end
