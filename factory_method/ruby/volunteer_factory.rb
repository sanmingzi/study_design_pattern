require 'volunteer'

class VolunteerFactory
  def create_leifeng(name)
    Volunteer.new(name)
  end
end
