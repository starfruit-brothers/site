class CreateIngredientUnits < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredient_units do |t|
      t.string :name
      t.float :amount
      t.belongs_to :ingredient

      t.timestamps
    end
  end
end
