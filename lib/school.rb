# code here!
class School

  attr_accessor :roster
  attr_reader :name

  def initialize(name, roster = {})
    #empty roster when initialized
    @name = name
    @roster = roster
  end

  # {grade => [name]}
  # roster = {9 => ["Zach Morris"]}

  def add_student(name, grade)
    #add student to school via .add_student(name, grade)

    #if roster is empty, give key 'grade' a value of an array
    @roster[grade] ||= []
    #then push in value (name)
    @roster[grade] << name
  end


  #take in an argument of a grade and return all of the students in that grade
  def grade(grade)
    @roster[grade]
  end

# sorted list of all the students where the strings in the student arrays are sorted alphabeticall
#iterate until reach student array, then ascend. sort elements
  def sort
    @roster.each do |grade, student|
      @roster[grade] = student.sort
    end
  end

end
