class Student < Person
  attr_accessor :classroom

  def initialize(age, name, parent_permission, classroom)
    super(age, name, parent_permission)
    @classroom = classroom
    classroom.add_student(self) 
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end
