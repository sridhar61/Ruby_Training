$global_name = "Ruby"

class Person
  def print_name
    print("The name is :" + $global_name + "\n")
  end
end


p1 = Person.new
p1.print_name # Ruby

class House
  $global_name = "Ruby on Rails"
  def print_name
    print("The name is :" + $global_name + "\n")
  end
end

p1.print_name # Ruby on Rails

h1 = House.new
h1.print_name  # Ruby on Rails
