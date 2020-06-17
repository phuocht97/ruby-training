class Person
  attr_writer :age

  def older_than?(other)
    age > other.age
  end

  protected

  attr_reader :age

  private

  def example
  end
end

class Boy < Person
  def call_example
    example
  end
end

p1 = Person.new
p1.age = 17

p2 = Person.new
p2.age = 16

puts p1.older_than?(p2)