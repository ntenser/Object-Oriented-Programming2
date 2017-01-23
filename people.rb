
class Person
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end
  def greeting
    "Hi, my name is #{ first_name }."
  end

  class Student < Person
    def learn
      "I get it!"
    end
  end

  class Instructor < Person
    def teach(student)
      "#{name} Teaches #{student.name} everything in Ruby is an Object"
    end
  end




chris = Instructor.new("Chris")
chris.greeting
chris.teach

cristina = Student.new("Cristina")
cristina.greeting
cristina.learn

# cristina.teach --> When calling the teach method on the student instance
# you get an unidentified method error.
