# Inheritance, Composition, and Aggregation

## Inheritance

Inheritance is for straightforward is-a relationship.

A baseball is a ball.

A skyscaper is a building.

```ruby
class Ball
    attr_accessor :radius
    attr_accessor :weight

    def initialize
        @radius = 0
        @weight = 0
    end
end

class Baseball < Ball
    attr_accessor :stitches

    def initialize
        @stitches = 0
    end
end

class SoccerBall < Ball
    attr_accessor :panels

    def initialize
        @panels = 0
    end
end
```

## Composition

Composition is for things that make up other things. If the container object is destroyed, so will all of its composing parts. Composition is the pattern for part-of relationships.

A pancreas is part of a body.

A room is part of a building.

```ruby
class Pancreas
    attr_accessor :filtering

    def initialize
        @filtering = true
    end
end

class Liver
    attr_accessor :poisoned
    def initialize
        @poisoned = false
    end
end

class Body
    attr_accessor :the_pancreas
    attr_accessor :the_liver

    def initialize
        self.the_pancreas = Pancreas.new
        self.the_liver = Liver.new
    end
end
```

## Aggregation

Aggregation is for adding objects that are needed for the operation of another object, but should exist independently of it should it be destroyed. Aggregation is the pattern for has-a relationships.

```ruby
class Customer
    attr_accessor :accountNumber
    attr_accessor :firstName
    attr_accessor :lastName

    def initialize(fn, ln, acct):
        @accountNumber = acct
        @firstName = fn
        @lastName = ln
    end
end


class Bank
    attr_accessor :name
    attr_accessor :address
    attr_accessor :lastName
    attr_accessor :customers

    def initialize
        @name = ""
        @address = ""
        @lastName = ""

        @customers = Array.new
    end
end

# Create the bank
FirstTennessee = Bank.new

# Create some customers
steve = Customer.new("Steve", "Brownlee", "000000000")
ryan = Customer.new("Ryan", "Tanay", "000000000")
charisse = Customer.new("Charisse", "Lambert", "000000000")

# Add the customers into the aggregate instance variable of the bank
FirstTennessee.customers.push(steve)
FirstTennessee.customers.push(ryan)
FirstTennessee.customers.push(charisse)

```

In this last example, the Customer you created would not cease to exist should the Bank in which it had an account went bankrupt and closed.
