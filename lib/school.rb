# code here!
class School
  
  attr_accessor :name, :grade, :school, :roster
  def initialize(school= "Bayside High School")
    @roster = Hash.new{ |h, k| h[k] = [] }
    
    
  end 
  def add_student(name, grade)
    if !roster[grade]  #if it exists // if it'
   roster[grade] = []
 end 
   roster[grade]<< name
end 
 def grade(grade)
   roster[grade].sort #implicitly print grade for hash array 
 end 
  
  def sort
    sorted = {}
    roster.each do |grade, students|
      sorted[grade] = students.sort
    end 
    sorted
end 
end