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
        super(name, "Dog")
    end
# Sets the speed of the dog
    def walk
        @speed = @speed + (0.2 * @legs)
    end
end
