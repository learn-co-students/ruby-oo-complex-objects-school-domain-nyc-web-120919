# code here!
require 'pry'

class School
    attr_accessor :name, :roster
  
    def initialize(name)
      @name = name
      @roster = {}
    end
  
    def add_student(student, grade)
      if !roster[grade]
        roster[grade] = []
        roster[grade] << student 
      else 
      roster[grade] << student
      end
    end 

    def grade(grade)
        roster[grade]
    end 

    def sort
        my_hash = {}
        roster.each do |grade, student_array|
           # binding.pry 
            my_hash[grade] = student_array.sort

        end 
        my_hash 
    end 

end 