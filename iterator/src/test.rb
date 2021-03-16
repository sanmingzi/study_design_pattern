require_relative 'array_iterator'

arr = [1, 2, 3, 'a', 'b', 'c']
it = arr.create_iterator

until it.is_done
  puts it.current_item
  it.next
end
