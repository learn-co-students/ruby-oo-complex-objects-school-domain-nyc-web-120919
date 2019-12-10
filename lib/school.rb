class School
    attr_accessor :grade, :student_name, :roster, :school_name

    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    def add_student(student_name, grade)
        @student_name = student_name
        @grade = grade
        if @roster.has_key?(@grade)
            @roster[@grade] << @student_name
        else @roster[@grade] = [@student_name]
        end
    end

    def grade(grade_integer)
        @roster[grade_integer]
    end

    def sort
        @roster.map do |grade, name_arr|
            name_arr.sort!
        end 
        @roster
    end
end