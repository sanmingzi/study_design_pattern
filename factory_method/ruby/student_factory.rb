require 'student'

class StudentFactory
  def create_leifeng(name)
    Student.new(name)
  end
end
