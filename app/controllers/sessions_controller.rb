require_relative '../views/session_view'
require 'pry-byebug'

class SessionsController
  def initialize(repo)
    @repo = repo
    @view = SessionView.new
  end

  def login
    # ask user for username
    given_username = @view.ask_for_label('username')
    # find the user by the username
    employee = @repo.find_by_username(given_username)

    # binding.pry
    # if found => get the username password
    if employee.nil? == false
      # ask user for password
      given_password = @view.ask_for_label('password')
      # compare that
      # binding.pry
      if given_password == employee.password
        # if it's a match => return the user
        return employee
      else
        # else => ask the user again
        @view.invalid_credential
        login
      end
    else
      # if not found => show message to user => ask the user again
      @view.invalid_username
      login
    end
  end
end