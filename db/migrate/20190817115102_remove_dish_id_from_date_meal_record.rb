class RemoveDishIdFromDateMealRecord < ActiveRecord::Migration[5.2]
  def change
    remove_column :date_meal_records, :dish_id, :integer
  end
end
