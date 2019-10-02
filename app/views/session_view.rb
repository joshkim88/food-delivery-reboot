require_relative 'base_view'

class SessionView < BaseView
  def invalid_username
    puts "Your username is not found, please try again"
  end

  def invalid_credential
    puts "Your password is invalid, access denied"
  end
end