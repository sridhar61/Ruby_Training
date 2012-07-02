name = "Ruby"
address = "Ruby on Rails"


def print_name
  name = "Another Ruby"
  print("Name is: " + name + "\n")
  "some name \n"
end

some_var = print_name

print some_var

print("And the Original name is: " + name + "\n")


def age_color(age)
  if age <= 25
    return "red"
  else
    return "black"
  end
end


print(age_color(25) + "\n")

print(age_color(28) + "\n")
