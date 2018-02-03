# Ruby Attribute Accessors

Getting and Setting properties on an object are such common operations that ruby has given us a great way to do that succinctly useing attr_accessors.

In the past, if we wanted to provide a way to get and set attributes on an instance of an object we might explicitly write methods like this:

```ruby

class Person

    def name
      @name
    end

    def name=(value)
      @name = value
    end

    def age
      @age
    end

    def age=(value)
      @age = value
    end
```

This get's extremely boring and repetitive and and downright out of hand if we have more than a few properties we wish to set and get.

Attribute accessors do this automatically, so we can get on with the fun parts of programming and quit writing the same thing over and over again. We can set them up to read only, to write only, or to read and write.

```ruby
class Product
    attr_reader :price
    attr_writer :title
    attr_accessor :description

    def initialize
        @price = 15
        @title = ""
        @description = ""
    end
end

kite = Product.new
kite.price
kite.title = "A red kite"
kite.description = "Flies up to 150 meters in the air. Made of nylon."
kite.description
```

`attr_accessor` defines a named attribute, creating an instance variable (@name) and a corresponding access method to read it(getter). Also creates a method called name= to set the attribute(setter).

To have an instance variable only be readable, we just need a getter method. For this, we use `attr_reader` which creates an instance variable and corresponding method that will return the value of the instance variable.

To creates just a setter method for an instance variable, we use `attr_writer`. This creates an accessor method to allow assignment to the attribute @name
