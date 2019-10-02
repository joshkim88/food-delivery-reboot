require_relative 'Base'

class Employee < Base
  attr_reader :username, :password, :role

  def initialize(properties = {})
    super(properties)

    @username = properties[:username]
    @password = properties[:password]
    @role = properties[:role]
  end

  def manager?
    @role == 'manager'
  end

  def delivery_guy?
    !manager?
  end
end