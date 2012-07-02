# Strings


# Add your custom method to the Ruby Defined class: String

a = "Hi there!!"

if a.respond_to?("country")
  print "You can call country \n"
else
  print "Country method not available \n"
end

class String

  def country
    "India"
  end
end


if a.respond_to?("country")
  print "You can call country \n"
else
  print "Country method not available \n"
end


print(a.country)


# NOTE: Ruby expression evaluation is available inside the double quotes but not the single quotes



# replace the first occurance and the adjoining word with another string using gsub and regular expression.
str = "hi there how are you doing, hi everyone"
reg = /hi.+?\s/
str.gsub(reg, "Hello, ")

# Replace the first occurance of a string with a new string in the given string.
# TODO: do it with the help of the method "gsub" and using regular expression.
#








