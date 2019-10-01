class Base
  attr_accessor :id
  attr_reader :name
  def initialize(properties = {})
    @id = properties[:id]
    @name = properties[:name]
  end
end

