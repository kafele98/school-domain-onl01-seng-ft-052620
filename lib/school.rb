class School
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end 
  
  def add_student(student, level)
    # this sort of means #=> a || a = b ... or #=> x || x = y
    # it's freak'n weird
    roster[level] ||= []
    roster[level] << student
  end 
  
  def grade(level)
    roster.detect do |x, y| 
      if x == level
        return y 
      end 
    end 
  end 
  
School.add_student("Zach Morris", 9)
School.roster
School.add_student("AC Slater", 9)
School.add_student("Kelly Kapowski", 10)
School.add_student("Screech", 11)
School.roster
School.grade(9)
School.sort

end 