# $LOAD_PATH.unshift  File.expand_path(File.join(File.dirname(__FILE__)))
$LOAD_PATH.unshift File.dirname(__FILE__)

require 'person'
require 't_shirts'
require 'big_trouser'

person = Person.new(name: 'ming')

ts = TShirts.new
bt = BigTrouser.new
ts.decorator(person)
bt.decorator(ts)
bt.show
