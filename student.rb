class Student < Person

    attr_accessor : classroom
    
    def initialize(age,name,parent_permission,classroom)
        super(age,name,parent_permission)
        @classroom = classroom
    end 
    def play_hooky
        return "¯\(ツ)/¯"
    end
    end





end 