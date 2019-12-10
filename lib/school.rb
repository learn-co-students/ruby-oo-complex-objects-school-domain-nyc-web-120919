# code here!
require 'pry'
class School

  attr_accessor :name, :roster


  def initialize(name)
    @name = name
    @roster = {}

  end

  def add_student(student, grade)
    if @roster[grade]
      @roster[grade] << student
    else
      @roster[grade] = []
      @roster[grade] << student
    end
  end
  
  def grade(grade)
    @roster[grade]
    # binding.pry
  end

  def sort
    # works but not value @roster.sort_by {|k, v| k}.to_h
    @roster.sort_by(&:first).map { |k, v| [k, v.sort]}.to_h
    # binding.pry
  end

end