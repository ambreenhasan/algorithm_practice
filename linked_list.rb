Node = Struct.new(:value, :next)

List = Struct.new(:head) do
  def each
    node = @head
    while node
      yield node
      node = node.next
    end
  end

  def find(value)
    each {|node| return node if node.value == value}
    nil
  end

  def unshift(value)
    @head = Node.new(value, @head)
  end

  def push(value)
    last.next = Node.new(value, nil)
  end

  def last
    each {|node| return node if node.next == nil }
  end
end



c = Node.new("third", nil)
b = Node.new("second", c)
a = Node.new("first", b)

list = List.new(a)

list.each { |node| puts node.value }

# puts list.find("second").inspect
# puts list.unshift("second").inspect

