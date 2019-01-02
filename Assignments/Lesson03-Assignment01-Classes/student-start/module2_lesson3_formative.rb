class Person
  # have a first_name and last_name attribute with public accessors
  # attr_accessor

  # have a class attribute called `people` that holds an array of objects
  @@people = []

  attr_accessor :last_name, :first_name

  # have an `initialize` method to initialize each instance
  # should take 2 parameters for first_name and last_name
  def initialize(first_name, last_name)
    # assign those parameters to instance variables
    # add the created instance (self) to people class variable
    @first_name = first_name
    @last_name = last_name
    @@people.push(self)
  end

  # have a `search` method to locate all people with a matching `last_name`
  def self.search(last_name)
    # accept a `last_name` parameter
    # search the `people` class attribute for instances with the same `last_name`
    # return a collection of matching instances
    @@people.select { |person| person.last_name == last_name }
  end

  # have a `to_s` method to return a formatted string of the person's name
  def to_s
    # return a formatted string as `first_name(space)last_name`
    "#{@first_name} #{@last_name}"
  end
end

Person.new("John", "Smith")
Person.new("John", "Doe")
Person.new("Jane", "Smith")
Person.new("Cool", "Dude")

puts Person.search("Smith")

# Should print out
# => John Smith
# => Jane Smith
