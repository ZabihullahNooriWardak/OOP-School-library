class Person
  attr_accessor :id, :name, :age

  def initialize(age, name = "unknown", parent_permission = true)
    @name = name
    @age = age
  end

  def private_of_age?
    return @age >= 18
  end

  def public_can_use_services?
    return private_of_age? || @parent_permission
  end
end
