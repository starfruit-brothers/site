class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.float :non_edible_percentage

      t.timestamps
    end
  end
end
