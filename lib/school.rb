
class School

    def initialize(name)
        @name = name
        @roster = {}
    
    end

    def roster
        @roster
    end 

    def add_student(name, grade)
        if !@roster[grade] 
            @roster[grade] = []
        end 
        @roster[grade] << name 
    end 
    
    def grade(year)
        @roster[year]
    end 
    
    def sort
        @roster.each { |name, value| 
        value.sort! }
    end 


end 