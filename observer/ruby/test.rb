$LOAD_PATH.unshift File.dirname(__FILE__)

require 'concrete_subject'
require 'concrete_observer_a'
require 'concrete_observer_b'

subject = ConcreteSubject.new

observer_a = ConcreteObserverA.new
subject.attach(observer_a)

observer_b = ConcreteObserverB.new
subject.attach(observer_b)

subject.some_business_logic
subject.some_business_logic
subject.some_business_logic
