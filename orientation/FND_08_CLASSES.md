# Ruby Classes

A class in Ruby is much like the new instances of functions that you created in JavaScript when you learned about prototypal inheritance.

Below is a perfectly valid class (that does absolutely nothing) and then gets created and invoked afterwards.

```ruby
# Define a class
class Noop
    # Code describing what the class is for
end

# Create an instance of the class and invoke it
n = Noop.new
```

What exactly gets invoked in this case since the class has no actual logic in it. For any class, when you invoke it, it executes the `initialize` method.

## Simple Class

Let's define a class that actually does something when it's initialized.

```ruby
class Zoo
    def initialize(name)
        @zoo_name = name
    end

    def zoo_name
        @zoo_name
    end
end
a_zoo = Zoo.new("Zoolandia")
a_zoo.zoo_name
```

You can see that the syntax is very close to creating a new instance of a JavaScript class. Be aware that the `initialize` function may **look** like the constructor function, but it's not. It only gets invoked after the instance of the class has been fully created, and that new instance gets passed into the `initialize` function.

In fact, the class instance is the first argument to **_any_** function defined in a class.

```ruby


class Zoo
    
    def initialize(name):
        @zoo_name = name
        @animals = Hash.new
        @habitats = Array.new
        @visitors = Array.new
    end

    def build_habitat(name, type)
        @habitats.push([name, type])
    end


    def sell_family_ticket(family)
        @visitors.push(family)
    end


    def purchase_animal(type, name)
        @animals[name] = type
    end


    def list_animals
        for key, value in @animals
            puts "#{@key} the #{value}"
        end
    end
end

a_zoo = Zoo.new("Zoolandia")
a_zoo.add_animal("Tortoise", "Tommy")
a_zoo.list_animals

```

## Subclassing

In the previous example, we used strings to define an animal. Let's be more detailed in what an animal is by defining an `Animal` class.

```ruby
class Animal

    attr_accessor :name
    attr_accessor :species
    attr_accessor :speed
    attr_accessor :legs

    def initialize(name = nil, species = nil):
        @name = name
        @species = species
        @speed = 0
        @legs = 0
    end

    def walk
        puts "Parent class walk method"
        @speed = @speed + (0.1 * @legs)
    end

    def toString
        return "#{@name} is a #{@species}"
    end    
end

class Dog < Animal
    def initialize(name)
        Animal.new(name, "Dog")
    end

    def walk
        @speed = @speed + (0.2 * @legs)
    end
end
```



# Additional Reading

1. [Documentation for class Class in Ruby](https://ruby-doc.org/core-2.4.0/Class.html)
2. [super simple explanation on video](https://www.youtube.com/watch?v=2OG0bbmNqQ4)
