require_relative '../views/meal_view'

class MealsController
  def initialize(repo)
    @repo = repo
    @view = MealView.new
  end

  def list
    # get all meals from repo
    all_meals = @repo.all
    # pass all the meals to view
    # view will display it
    @view.display_all(all_meals)
  end

  def add
    # ask user for for meal name
    meal_name = @view.ask_for_label('name')
    # ask user for for meal price
    meal_price = @view.ask_for_number('price')
    # create an instance of meal
    new_meal = Meal.new(name: meal_name, price: meal_price)
    # add it the repo
    @repo.add(new_meal)
  end
end