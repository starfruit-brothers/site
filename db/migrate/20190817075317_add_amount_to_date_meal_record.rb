class AddAmountToDateMealRecord < ActiveRecord::Migration[5.2]
  def change
    add_column :date_meal_records, :amount, :float
  end
end
