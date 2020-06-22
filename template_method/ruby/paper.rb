class Paper
  def initialize(name)
    @name = name
  end

  def question1
    puts '---------'
    puts "name: #{@name}"
    puts "question1: ABCD"
    puts "answer1: #{answer1}"
  end

  def question2
    puts '---------'
    puts "name: #{@name}"
    puts "question2: ABCD"
    puts "answer2: #{answer2}"
  end

  def answer1
    raise 'No method'
  end

  def answer2
    raise 'No method'
  end
end
