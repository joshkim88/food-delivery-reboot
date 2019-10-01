require_relative 'base_view'

class CustomerView < BaseView
  def display_all(elements)
    elements.each do |element|
      puts "#{element.name} - #{element.address}"
    end
  end
end