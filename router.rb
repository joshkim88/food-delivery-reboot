class Router
  def initialize(controllers = {})
    @meals_controller = controllers[:meals]
    @customers_controller = controllers[:customers]
    @sessions_controller = controllers[:sessions]
    @running = true
  end

  def run
    # LOGIN
    # if login failed, we're not showing any actions ==> AUTHentication
    # else, we checked if user is a manager
      # if manager => show all actions ==> AUTHorization
      # else => show only delivery guys actions

    auth_user = @sessions_controller.login

    # binding.pry

    # authorization process now
    if auth_user.manager?
      puts "SHOW MANAGER ACTIONS"      
    else
      puts "SHOW DELIVERY GUY ACTIONS"
    end


    # puts "Welcome to the Foodo!"
    # puts "           --           "

    # while @running
    #   display_tasks
    #   action = gets.chomp.to_i
    #   print `clear`
    #   route_action(action)
    # end
  end

  private

  def route_action(action)
    case action
    when 1 then @meals_controller.list
    when 2 then @meals_controller.add
    when 3 then @customers_controller.list
    when 4 then @customers_controller.add
    when 9 then stop
    else
      puts "Please write the number for actions"
    end
  end

  def stop
    @running = false
  end

  def display_tasks
    puts ""
    puts "What do you want to do next?"
    puts "1 - List all meals"
    puts "2 - Create a new meal"
    puts "3 - List all customers"
    puts "4 - Create a new customer"
    puts "9 - Stop and exit the program"
  end
end
