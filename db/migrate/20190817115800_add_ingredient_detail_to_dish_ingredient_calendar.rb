class AddIngredientDetailToDishIngredientCalendar < ActiveRecord::Migration[5.2]
  def change
    add_column :dish_ingredient_calendars, :ingredient_detail, :string
  end
end
