require 'csv'
require_relative '../models/meal'
require_relative 'base_repository'

class MealRepository < BaseRepository
  def build_model(row)
    row[:id] = row[:id].to_i
    row[:price] = row[:price].to_i
    return Meal.new(row)
  end 
end


# # it will look meals.csv based on where you run the code
# meal_repo = MealsRepository.new('data/meals.csv')
# p meal_repo















