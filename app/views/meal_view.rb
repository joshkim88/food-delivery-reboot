require_relative 'base_view'

class MealView < BaseView
  def display_all(elements)
    elements.each do |element|
      puts "#{element.name} - $#{element.price}"
    end
  end
end