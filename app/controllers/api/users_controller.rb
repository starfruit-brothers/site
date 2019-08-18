# frozen_string_literal: true

class Api::UsersController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  def index
    @users = User.all
    render json: @users
  end

  def create
    user = User.create!(
      name: params[:name],
      age: params[:age],
      weight: params[:weight],
      animal_based_food: params[:animalBasedFood],
      working_level: params[:workingLevel],
      month_of_pregnancy: params[:monthOfPregnancy],
      month_of_breastfeeding: params[:monthOfBreastfeeding],
      is_aids: params[:isAids],
      is_hiv: params[:isHiv],
      gender: params[:gender]
    )
    render json: user
  end

  def options
  end

end