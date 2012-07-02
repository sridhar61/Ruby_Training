class Parent
end

class Class1 < Parent
  def a_method
  end
end


class Class2 < Parent
  def b_method
  end
end


class Class3
end


# Q: find a way to hae method a_method and method b_method bot available in Class3

# A: use modules.