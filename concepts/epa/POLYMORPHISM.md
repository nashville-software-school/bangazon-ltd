# Polymorphism

[Polymorphism](https://en.wikipedia.org/wiki/Polymorphism_(computer_science)) means that different objects may share the same set of properties and methods, but each may use those properties and methods to achieve different behavior.

# Polymorphism via Subtyping

For example, in a base class of Animal, you define a general rule of how fast an Animal can walk. However, in the derived Lizard class, you can override that rule to give Lizards a slightly different behavior. For every leg they have, they can move twice as fast as a generic Animal.

This is subclass polymorphism - achieved with inheritance. Both `Dog` and `Animal` are typed as `Animal` so you have the same type exhibiting different behaviors.

```ruby
class Animal
    attr_accessor :name, :species, :speed, :legs

    def initialize(name=nil, species=nil)
        @name = name
        @species = species
        @speed = 0
        @legs = 0
    end

    # Sets the speed of the animal
    def walk
        if @legs > 0
            @speed = @speed + (0.1 * @legs)
        else
            raise TypeError, 'Legs property must contain a number greater than 0'
        end
    end

    # __str__ is a special function equivalent to toString() in JavaScript
    def formatted_string
        return "#{@name} is a #{@species}"
    end
end

class Dog < Animal
    def initialize(name)
        Animal.new(name, "Dog")
    end
# Sets the speed of the dog
    def walk
        @speed = @speed + (0.2 * @legs)
    end
end
```

In Python, you can use the `super()` method, which allows a derived class to invoke the corresponding method in the parent class, possibly modifying its inputs or outputs before returning.

```ruby
class Animal
  attr_accessor :name, :species

  def initialize(name = nil, species = nil)
    @name = name
    @species = species
  end

  def eat_food(food)
      return "#{name}, #{food}"
  end
end

class Panda < Animal
  def initialize(name)
      super(name, "Panda")
  end  
  # The eat_food method's behavior is derived from the parent
  # class, but is made more specialized in the derived class
  def eat_food(food)
      parent_message = super(food)
      message = parent_message + " but doesn't digest it very well"
      return message
  end
end
```

* [Object oriented programming](https://en.wikipedia.org/wiki/Object-oriented_programming)
