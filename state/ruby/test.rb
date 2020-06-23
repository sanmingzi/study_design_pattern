$LOAD_PATH.unshift File.dirname(__FILE__)

require 'work'

work = Work.new
work.write_program

work.hour = 12
work.write_program

work.hour = 14
work.write_program
