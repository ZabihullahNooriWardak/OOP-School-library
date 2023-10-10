class Teacher < Person
  attr_accessor :specialization

  def initialize(age, name, parent_permission, specialization)
    super(age, name, parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    return true
  end
end
