require 'csv'
require_relative '../models/employee'
require_relative 'base_repository'

class EmployeeRepository < BaseRepository
  undef :add

  def all_delivery_guys
    # filter all the employees array only if
    # the employees is delivery_guy

    @elements.select do |employee|
      employee.delivery_guy?
    end
  end

  def find_by_username(given_username)
    # filter all the employees array only if
    # the employee.username == given_username

    @elements.find do |employee|
      employee.username == given_username
    end
  end

  private

  def build_model(row)
    row[:id] = row[:id].to_i
    return Employee.new(row)
  end
end
















