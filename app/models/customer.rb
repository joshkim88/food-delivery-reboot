require_relative 'base'

class Customer < Base
  attr_reader :address
  
  def initialize(properties = {})
    super(properties)
    @address = properties[:address]
  end

  def build_header
    return %w(id name address)
  end

  def build_data
    return [@id, @name, @address]
  end
end
