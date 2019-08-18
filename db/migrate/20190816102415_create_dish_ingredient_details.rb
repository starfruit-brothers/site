class CreateDishIngredientDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :dish_ingredient_details do |t|
      t.float :amount
      t.belongs_to :dish
      t.belongs_to :ingredient

      t.timestamps
    end
  end
end
