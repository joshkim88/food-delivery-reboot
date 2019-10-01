require_relative 'base'

class Meal < Base
  attr_reader :price

  def initialize(properties = {})
    super(properties)
    @price = properties[:price]
  end

  def build_header
    return %w(id name price)
  end

  def build_data
    return [@id, @name, @price]
  end
end
