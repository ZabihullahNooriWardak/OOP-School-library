class Nameable
  def correct_name
    raise NotImplementedError, 'Subclasses must implement this method'
  end
end

class Person < Nameable
  attr_accessor :id, :name, :age

  def initialize(age:, name: 'unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def correct_name
    @name
  end

  private

  def private_of_age?
    @age >= 18
  end

  def public_can_use_services?
    private_of_age? || @parent_permission
  end
end

class Decorator < Nameable
  def initialize(nameable)
    super()
    @nameable = nameable
  end

  def correct_name
    @nameable.correct_name
  end
end

class CapitalizeDecorator < Decorator
  def correct_name
    @nameable.correct_name.capitalize
  end
end

class TrimmerDecorator < Decorator
  def correct_name
    original_name = @nameable.correct_name
    original_name.length > 10 ? original_name[0, 10] : original_name
  end
end

person = Person.new(age: 22, name: 'maximilianus')
puts person.correct_name

capitalized_person = CapitalizeDecorator.new(person)
puts capitalized_person.correct_name

capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
puts capitalized_trimmed_person.correct_name
