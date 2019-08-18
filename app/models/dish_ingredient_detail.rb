class DishIngredientDetail < ApplicationRecord
  belongs_to :dish
  belongs_to :ingredient

  def self.as_json_by_dish_id(dish_id)
    res = []
    DishIngredientDetail.where(dish_id: dish_id).each do |d|
      res_item = {
        id: d.id,
        amount: d.amount,
        ingredientId: d.ingredient_id,
        dishId: d.dish_id,
        ingredientName: Ingredient.find_by(id: d.ingredient_id).name
      }
      res.push(res_item)
    end
    res
  end
end
