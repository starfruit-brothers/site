# frozen_string_literal: true

class Api::TestController < ApplicationController
  skip_before_action :verify_authenticity_token

  def test
    params[:dish_ingredient_details].to_a.each do |e|
      puts e['amount']
    end
    Rails.logger.info()
    Rails.logger.info('asdasdasdasdsadasdasd')
  end
end
