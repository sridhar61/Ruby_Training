# Q: considering the use case of a Car, a Motorbike and a Bus


class Vehicle

  attr_accessor :m_year, :model_name, :no_of_wheels, :engine_capacity

end


class Bus < Vehicle

  attr_accessor :headlights

end

class Car < Vehicle
end

class Motorbike < Vehicle

  def wheel_type
    "Steel Wheels"
  end
end

class Yamaha < Motorbike
  def wheel_type
    "Alloy Wheels"
  end
end

class Bajaj < Motorbike
end

class Suzuki < Motorbike
end