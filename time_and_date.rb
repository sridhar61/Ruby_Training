# demonstrating the Time and Date classes


now = Time.now

# different formats of time can be made using the method strftime

now.strftime("%a")

now.strftime("%d %b, %Y") # => "26 Jun, 2012"

