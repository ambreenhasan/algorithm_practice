Node = Struct.new(:value, :next)

List = Struct.new(:head) do
  def each
    node = head
    while node
      yield node
      node = node.next
    end
  end
end

