class NewThing
  def initialize(name:, order: nil)
    @name = name
    @order = order || Float::INFINITY
  end

  def inspect
    "NewThing: #{@name}"
  end

  def <=>(other_thing)
    [@order, @name] <=> [other_thing.order, other_thing.name]
  end

  protected

  attr_reader :name, :order
end

steve_1 = NewThing.new(order: 2, name: "steve jones")
steve_2 = NewThing.new(order: 1, name: "steve smith")
steve_3 = NewThing.new(name: "steve alan")

things = [
  steve_1,
  steve_2,
  steve_3,
]

p things.sort
