class Node
  attr_accessor :value, :previous
  def initialize(value, previous)
    @value = value
    @previous = previous
  end
end

class LinkedList
  # uses `@head` to store a reference to the first node
  attr_accessor :head
  def initialize array
    @head = nil
    array.reverse.each do |value|
      cons(value)
    end
  end

  def cons value
    old_head = @head
    @head = Node.new(value, old_head)
  end
end

panfil = LinkedList.new([1,2,3,4,5])
