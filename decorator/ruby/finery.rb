require 'person'

class Finery < Person
  def decorator(person)
    @component = person
  end


  def show
    @component.show if @component != nil
  end
end
