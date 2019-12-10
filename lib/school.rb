class School
  attr_accessor :roster
  def initialize (name)
    @name = name
    @roster = {}
  end
  
  def add_student (name, grade)
    students_by_grade = roster[grade]
    students_by_grade = [] if students_by_grade == nil
    
    students_by_grade << name
    
    roster[grade] = students_by_grade
  end
  
  def grade(grade) 
    roster[grade]
  end
  
  def sort
    new_roster = roster.sort.to_h
    new_roster.each {|key, value| value.sort!}
    new_roster

  end
end