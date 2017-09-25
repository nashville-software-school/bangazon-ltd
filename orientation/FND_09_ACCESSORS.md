# Ruby Attribute Accessors

An object's instance variables are its attributes, unique to each object of the same class. To write and read these attributes, we use methods called attribute accessors.

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

To create just a setter method for an instance variable, we use `attr_writer`. This creates an accessor method to allow assignment to the attribute @name
