class DishIngredientCalendar < ApplicationRecord
  belongs_to :dish
  belongs_to :date_meal_record

  def self.as_json_by_dish_and_date_meal(dish_id, date_meal_id)
    res = []
    DishIngredientCalendar.where(dish_id: dish_id, date_meal_record_id: date_meal_id).each do |d|
      res.push(JSON.parse(d.ingredient_detail))
    end
    res
  end
end
