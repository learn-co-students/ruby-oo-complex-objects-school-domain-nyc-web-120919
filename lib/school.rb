# code here!
require 'pry'

class School

      attr_accessor :roster, :name,  
    
    def initialize(name)
        @name = name
        @roster = {}
    end 

    def roster
        @roster = {}
    end 

    def roster=(roster)
        @roster = roster
    end 

    def add_student(student, grade)
       #binding.pry 
        if !roster[grade]
            roster[grade] = []
            roster[grade] << student
        else 
            roster[grade] << student 
        end 
    
end 