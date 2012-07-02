# checking conditions with if-else-elsif-end
def color
  # Red: if the output of block is <= 100
  # Green: if the output of block is > 100 and <= 500
  # Blue: if the output of block is > 500 and <= 1000
  # Black: if the output of block is > 1000
  color_value = yield

  if color_value <= 100 and color_value >= 0
    "RED"
  elsif color_value > 100 and color_value <= 500
    "GREEN"
  elsif color_value > 500 and color_value <= 1000
    "BLUE"
  elsif color_value > 1000
    "BLACK"
  else
    "NO COLOR FOUND"
  end
end

# passing the block to the method
print color{200}  + "\n"


# for checking logical AND we can use "and" or "&&"
# for checking logical OR we can use "or" or "||"

def age_color(age, gender)
  if age >= 20 && gender == "f"
    "pink"
  elsif age >= 20 && gender == "m"
    "blue"
  end
end


def test_print
  print "Print a test test here..... \n"
  return true
end

a = false

print "Condition 1 \n"
if a == true && test_print
  print "Found the test print"
else
  print "No test print"
end


print "\n\n Condition 2 \n"


if a == true & test_print
  print "Found the test print"
else
  print "No test print \n"
end

# use unless-else-end
print "It's the if statement \n" if a  # it will check if a == true
print "It's the Unless statement \n" unless a # it will check for if a== false

=begin
unless condition
  state...
else
  statement...
end
=end



# Case and When

# matching the parent class of the object

age = "40"

case age
  when String then print "Age is present in String"
  when Fixnum then print "Age is present in Fixnum"
end


def color_case(color)
  case color
    when "Red", "Green", "Blue"
      print "Primary Color Found"
    else
      print "No Primary Color Found"
  end
end













