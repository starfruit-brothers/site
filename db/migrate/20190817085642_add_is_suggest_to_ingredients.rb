class AddIsSuggestToIngredients < ActiveRecord::Migration[5.2]
  def change
    add_column :ingredients, :in_suggest, :boolean
  end
end
