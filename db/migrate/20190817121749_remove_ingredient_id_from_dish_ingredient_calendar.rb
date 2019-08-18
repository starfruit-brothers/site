class RemoveIngredientIdFromDishIngredientCalendar < ActiveRecord::Migration[5.2]
  def change
    remove_column :dish_ingredient_calendars, :ingredient_id, :integer
  end
end
