# demonstrating the Hash class

h = {"name"=>"Ruby Programming language", "framework"=>"Ruby on Rails", "version"=>"1.9.3", "platform"=>"Mac", "language"=>"Ruby Programming language"}


# inverting a hash

h.invert


# iterating over a hash

h.each do |key, value|
  print "Key is: #{key} and the value is: #{value} \n"
end

print "Converting hash into an array. \n"

# convert the hash into an Array.
h.to_a  # key will become first element and value will be the second element of the multi-dimensional array's element.

h.to_a.each do |element|
  print "First element is: #{element.first} and second element is: #{element.last} \n"
end

# always try to use Symbols as keys instead of strings

h = {:name => "Ruby", :framework => "Ruby on Rails"}
