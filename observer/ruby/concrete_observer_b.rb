require 'observer'

class ConcreteObserverB < Observer
  def update(subject)
    puts "ConcreteObserverB: React to the event" if subject.state >= 2
  end
end
