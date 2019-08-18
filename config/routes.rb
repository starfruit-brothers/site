Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: 'json' } do
    match '/users' => "users#options", via: :options
    resources :nutrients
    resources :users
    resources :ingredients
    resources :dishes
    resources :date_meal_records
    resources :dish_ingredient_calendars
    post '/test' => 'test#test'
    get '/food-calendar' => 'food_calendar#get_food_calendar'
  end
end
