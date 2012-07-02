# demonstrating the Array class

ar = [1, "some", :symvalue, "another string", 20, 22]


# TODO: how to fetch the first and the last elements of array using a single statement.
# i.e. in a  single statement we want the result [1, 22]


# question: how to find out all the indexes of a repeated element inside an array
words = %w(some thing there some)
indexes = []
words.each_with_index do |element, index|
  if(element=="some")
    indexes << index
  end
end

print "Words are #{words} \n"
print "Indexes for 'some' are: #{indexes} \n"

# array of words
words = %w(hi there how are you today)


# combining arrays

# nested arrays

# multi-dimensional arrays

# flattening the arrays



# question:
# fetch 4,5,6 index values by
# 1 -> using range
# 2 -> using index

ar = %w(hi there this is the second day of Ruby training)

# using range
ar[4..6]

# using index
ar[4, 3]





