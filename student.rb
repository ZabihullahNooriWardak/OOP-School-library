class Student < Person
  attr_accessor :classroom

  def initialize(age, name, parent_permission, classroom)
    super(age, name, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯' # Use single-quoted string, removed unnecessary escape, and trailing whitespace
  end
end
