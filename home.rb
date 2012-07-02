# A home will have 4 floors and a floor will have 6 rooms


# we will define common attributes of a Building's floor/room here in this class
class BuildingStructure
  attr_accessor :length, :width, :height

  def structural_info
    print "Length is: #{length}\n"
    print "Width is: #{width} \n"
    print "Height is: #{height} \n"
  end
end

class Home < BuildingStructure
  def initialize(length, width, height)
    @length = length
    @width = width
    @height = height
  end
end

# floor belongs to home
class Floor < BuildingStructure
  attr_accessor :home

  def initialize(length, width, height)
    # for floor
    @length = length
    @width = width
    @height = height

    # for linked home with this floor object
    h = Home.new(length, width, height*4)
    @home = h
  end

end

# room belongs to a Floor
class Room < BuildingStructure
  attr_accessor :floor

  def initialize(length, width, height)
    # for room
    @length = length
    @width = width
    @height = height

    # for linked floor object
    f = Floor.new(length*3, width*2, height)
    @floor = f
  end

end



