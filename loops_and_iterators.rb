# iterating the arrays

ar = 1,2,3,4,5,6,7

# the each method of array, iterates over every element.
index = 0
ar.each do |el|
  # calculating index manually
  print "Element is: #{el} and the Index is: #{index} \n"
  index += 1
end

# the commonly used each_with_index method
ar.each_with_index do |e, i|  # e stands for element and i stands for index
  print "Element is: #{e} and the Index is: #{i} \n"
end


h = {:name => "Dave", :age => 30, :city => "NYC", :country => "US"}

h.each do |k, v| # k stands for key and v stands for value
  print "Key is: #{k} and value is: #{v} \n"
end

print "Each with inded for hashes \n"

# hash.each_with_index basically means hash.to_a.each_with_index

h.each_with_index do |array, index| # k stands for key and v stands for value
  print "Key is: #{array.first} and value is: #{array.last} and the index is: #{index} \n"
end



# Loops

print "The For Loop: \n"
for element in ar  # element here is termed as reference variable as it's referencing every variable inside the array
  print "Element is: #{element} \n"
end

# Q1: exemplify the use of "while" loop
# Q2: exemplify the use of "until" loop


# the n.times
10.times do |num|
  print "Printing the text. the number is: #{num} \n"
end
(1..10).each do |num|
  print "Printing the text. the number is: #{num} \n"
end








