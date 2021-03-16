class Iterator
  def initialize(arr)
    @arr = arr
    @cursor = 0
  end

  def next
    @cursor += 1
  end

  def is_done()
    return @cursor >= @arr.size
  end

  def current_item
    @arr[@cursor]
  end
end

class Array
  def create_iterator
    Iterator.new(self)
  end
end
