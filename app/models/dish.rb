class Dish < ApplicationRecord
  has_many :dish_ingredient_details

  def self.get_dish_by_day_of_week(day, time)
    res = []
    date_meal_record = DateMealRecord.find_by(day_of_week: day, time_of_day: time)
    dish_ingredient_calendars = DishIngredientCalendar.where(date_meal_record_id: date_meal_record.id)

    dish_ingredient_calendars.each do |date_meal|
      dish = Dish.find_by(id: date_meal.dish_id)
      res_item = {
        id: dish.id,
        name: dish.name,
        ration: dish.ration,
        dishIngredientDetails: JSON.parse(date_meal.ingredient_detail || '[]'),
        amount: date_meal.amount
      }
      res.push(res_item)
    end
    res
  end

  def as_json_with_nutrient_map
    res = {}
    res['id'] = self.id
    res['name'] = self.name
    res['ration'] = self.ration
    res['dishIngredientDetails'] = get_ingredients_with_name
    res['nutrientMap'] = get_nutrient_map
    res
  end

  def get_nutrient_map
    nutrient_map = {}
    dish_ingredient_details.each do |dish_ingredient|
      ingredient_nutrient_map = dish_ingredient.ingredient.get_nutrient_map
      ingredient_nutrient_map.each do |key, value|
        nutrient_map[key] = nutrient_map[key].to_f + value * dish_ingredient.amount / 100
      end
    end
    nutrient_map
  end
 
  def get_ingredients_with_name
    res = []
    dish_ingredient_details.each do |e|
      item = {}
      item['id'] = e.id
      item['amount'] = e.amount
      item['ingredientId'] = e.ingredient_id
      item['ingredientName'] = e.ingredient.name
      item['nutrientMap'] = e.ingredient.get_nutrient_map
      res.push(item)
    end
    res
  end
end
