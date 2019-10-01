require_relative '../views/customer_view'

class CustomersController
  def initialize(repo)
    @repo = repo
    @view = CustomerView.new
  end

  def list
    # get all meals from repo
    all_customers = @repo.all
    # pass all the meals to view
    # view will display it
    @view.display_all(all_customers)
  end

  def add
    # ask user for for meal name
    customer_name = @view.ask_for_label('name')
    # ask user for for customer price
    customer_address = @view.ask_for_label('address')
    # create an instance of customer
    new_customer = Customer.new(name: customer_name, address: customer_address)
    # add it the repo
    @repo.add(new_customer)
  end
end