require 'pry'
# code here!

class School
    attr_reader :roster
    def initialize(name)
      @name = name
      @roster = {}
    end
  def add_student(student_name, grade)
    if !@roster[grade]
    @roster[grade] = []
    end
 @roster[grade] << student_name
    end
    def grade(grade)
        return @roster[grade]
    end
#return all students in roster
#sort the keys

def sort
student_hash = {}
    @roster.each do |grade, students|
student_hash[grade] = students.sort
    end
    student_hash
end
  end