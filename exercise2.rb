class System
  attr_reader :bodies
  def initialize
    @bodies = []
  end

  def add(body)
    @bodies.push body
  end

  def total_mass
    total_mass = 0
    @bodies.each do |body|
      total_mass += body.mass
    end
    return total_mass
  end
end

class Body
  attr_reader :name, :mass
  def initialize(name, mass)
    @name = name
    @mass = mass
  end
end

class Planet < Body
  attr_accessor :day, :year
  def initialize(name, mass, day, year)
  super(name, mass)
    @day = day
    @year = year
  end
end


class Star < Body
  attr_reader :type
  def initialize(name, mass, type)
  super(name, mass)
      @type = type
  end
end


class Moon < Body
  attr_accessor :month, :planet
  def initialize(name, mass, month, planet)
  super(name, mass)
    @month = month
    @planet = planet
  end
end
