Node = Struct.new(:value, :next)

Friend = Struct.new(:head) do
  def degrees_of_separation(start_node, destination_node)
  end

  def make_mutual_friends(friend_one, friend_two)
    create_relationships(friend_one, friend_two)
    # find a node
  end

  def create_relationships(friend_one, friend_two)
    # create a node
  end

  def create_person(name)
    # add a node
  end
end