require_relative 'classroom'
require_relative 'book'
require_relative 'rental'
class Student < Person
  attr_accessor :classroom

  def initialize(age, name, parent_permission, classroom)
    super(age: age, name: name, parent_permission: parent_permission)
    @classroom = classroom
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end
