class RemoveIngredientDetailFromDishIngredientCalendar < ActiveRecord::Migration[5.2]
  def change
    remove_column :dish_ingredient_calendars, :ingredient_detail, :string
  end
end
