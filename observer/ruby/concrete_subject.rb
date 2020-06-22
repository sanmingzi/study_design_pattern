require 'subject'

class ConcreteSubject < Subject
  attr_accessor :state

  def initialize
    @observers = []
  end

  def attach(observer)
    @observers << observer
  end

  def detach(observer)
    @observers.delete(observer)
  end

  def notify
    @observers.each { |observer| observer.update(self) }
  end

  def some_business_logic
    puts "Subject: I am doing something important"
    @state = rand(0..10)
    puts "Subject: My state has just change to :#{@state}"
    notify
  end
end
