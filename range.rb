# demonstrating the Range class

# range from 1 to 100

1..100

# converting to arrays

(1..100).to_a

# similarly for alphabets

("a".."z").to_a


# use of ranges in Arrays

ar = %w(hi there this is the second day of Ruby training)

# for fetching 4,5,6 index values we can do it like:
ar[4..6]



# TODO: from 1 to 50, print "hush" if the number is divisble by 3 and print "huff" if it's not divisible by 3

(1..50).to_a.each do |el|
  if(el%3).zero? # i.e. remainder is zero and number is divisible by 3
    print "Number is: #{el} : HUSH \n"
  else # i.e. remainder is non zero and number is not divisible by 3
    print "Number is: #{el} : huff \n"
  end
end


# TODO: from 1 to 50, print "hush hush" if the number is divisible by 2 and 3 and print "huff huff"
# if the number is neither divisible by 2 nor 3


=begin
TODO:
from 1 to 50,
print "hush" if num is only divisible by 2 and not 3
print "huff" if num is only divisible by 3 and not 2
print "hush huff" if number is divisble by both
print "huff huff" if number is neither divisible by 2 nor 3
=end




