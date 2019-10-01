require 'csv'
require_relative '../models/customer'
require_relative 'base_repository'

class CustomerRepository < BaseRepository
  def build_model(row)
    row[:id] = row[:id].to_i
    return Customer.new(row)
  end
end

# prima = Customer.new(
#   name: 'prima',
#   address: 'canggu'
# )


# # it will look meals.csv based on where you run the code
# customer_repo = CustomersRepository.new('data/customers.csv')
# customer_repo.add(prima)
# p customer_repo
















