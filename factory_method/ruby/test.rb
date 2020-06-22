$LOAD_PATH.unshift File.dirname(__FILE__)

require 'student_factory'
require 'volunteer_factory'

stu_fac = StudentFactory.new
ming = stu_fac.create_leifeng('ming')
hong = stu_fac.create_leifeng('hong')
ming.wash
hong.wash

vol_fac = VolunteerFactory.new
ming = vol_fac.create_leifeng('ming')
hong = vol_fac.create_leifeng('hong')
ming.wash
hong.wash
