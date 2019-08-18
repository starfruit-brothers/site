class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.integer :weight
      t.string :animal_based_food
      t.string :working_level
      t.string :gender
      t.integer :month_of_pregnancy
      t.integer :month_of_breastfeeding
      t.boolean :is_aids
      t.boolean :is_hiv

      t.timestamps
    end
  end
end
