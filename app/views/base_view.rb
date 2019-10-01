class BaseView
  def ask_for_label(label)
    puts "What is the #{label}?"
    return gets.chomp
  end

  def ask_for_number(label)
    puts "What is the #{label}?"
    return gets.chomp.to_i
  end
end