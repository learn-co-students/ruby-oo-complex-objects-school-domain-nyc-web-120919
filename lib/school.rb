# code here!
class School
  def initialize(school_name, roster={})
    @roster = roster
    @school_name = school_name
  end
  
  attr_reader :school_name, :roster
  
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
    @roster.each do |grade, students|
      @roster[grade].sort!
    end
  end
end