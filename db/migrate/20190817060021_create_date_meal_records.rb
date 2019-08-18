class CreateDateMealRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :date_meal_records do |t|
      t.string :day_of_week
      t.string :time_of_day
      t.belongs_to :dish
    end
  end
end
