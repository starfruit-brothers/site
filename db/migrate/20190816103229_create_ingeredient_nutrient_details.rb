class CreateIngeredientNutrientDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredient_nutrient_details do |t|
      t.float :amount
      t.belongs_to :nutrient
      t.belongs_to :ingredient

      t.timestamps
    end
  end
end
