# code here!
class School
  attr_accessor :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
    if(!@roster[grade])
      @roster[grade] = []
    end
    @roster[grade].push(name)
  end
  
  def grade(num)
    @roster[num]
  end
  
  def sort
    @roster.each do |key, value|
      @roster[key] = value.sort()
    end
  end
end