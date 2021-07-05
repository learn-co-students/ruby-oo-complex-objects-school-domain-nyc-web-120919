# code here!
require 'pry'
class School
  def initialize(school)
    @school_name = school
    @roster={}
  end
  def roster
    @roster
  end
  
  def add_student(name,grade)
    # binding.pry
    if @roster[grade]
      @roster[grade] << name
    else
    @roster[grade]=[] 
    @roster[grade] << name
    end
  
  end
  
  def grade(num)
     @roster[num]
  end

  def sort
    #@roster.each_value {|value| puts value}
    # @roster.each {|key,value|} 
    #     puts @roster[key]
     @roster.each_value do |value|
         value.sort!
       
       end
    
     #@roster.each {|key, value| puts "#{key} is #{value}" }
     @roster.each {|key, value| value.sort! }

   # binding.pry
  end


end