require 'observer'

class ConcreteObserverA < Observer
  def update(subject)
    puts "ConcreteObserverA: React to the event" if subject.state < 3
  end
end
