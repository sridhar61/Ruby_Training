# demonstrating Fixnum and Float classes

# q: Find out the difference b/w the Fixnum and Bignum




# customizing Fixnum class, adding a method "pref" to find out the previous integer value.

class Fixnum

  def prev
    self - 1
  end

  def print_my_object_id
    print(self.object_id.to_s + "\n")
  end
end

a = 20  # a Fixnum object

a.print_my_object_id


print("The original value is: " + a.to_s + "\n")

print("The previous integer value is: " + a.prev.to_s + "\n")
