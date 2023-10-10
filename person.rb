class Person
  attr_accessor :id, :name, :age

  def initialize(age, name: 'unknown', parent_permission: true)  # Updated to use keyword arguments
    @name = name
    @age = age
    @parent_permission = parent_permission  # Removed extra spaces and fixed indentation
  end

  def private_of_age?
    @age >= 18
  end

  def public_can_use_services?
    private_of_age? || @parent_permission
  end
end
