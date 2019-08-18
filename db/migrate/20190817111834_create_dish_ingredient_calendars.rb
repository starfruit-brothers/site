class CreateDishIngredientCalendars < ActiveRecord::Migration[5.2]
  def change
    create_table :dish_ingredient_calendars do |t|
      t.float :amount
      t.integer :ingredient_id
      t.integer :dish_id
      t.integer :date_meal_record_id

      t.timestamps
    end
  end
end
