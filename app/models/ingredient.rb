class Ingredient < ApplicationRecord
  has_many :ingredient_units
  has_many :ingredient_nutrient_details
  accepts_nested_attributes_for :ingredient_units, :allow_destroy => true

  def as_json_with_nutrient
    res = {}
    res['id'] = self.id
    res['name'] = self.name
    res['nonEdiblePercentage'] = self.non_edible_percentage
    res['inSuggest'] = self.in_suggest
    res['nutrientMap'] = get_nutrient_map
    res['ingredientUnits'] = ingredient_units
    res
  end

  def get_nutrient_map
    nutrient_map = {}
    ingredient_nutrient_details.each do |ingredient_nutrient|
      nutrient = ingredient_nutrient.nutrient
      ingredient = ingredient_nutrient.ingredient
      nutrient_map[nutrient.name] = ingredient_nutrient.amount
    end
    nutrient_map
  end
end
