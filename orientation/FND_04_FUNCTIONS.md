# Methods

Just like JavaScript functions, but the syntax is different.

```ruby
def display_name(name)
    puts name
end
display_name('Josephina')
```

You can define documentation for a function using RDoc. This is highly encouraged.

```
# Desribe the behaviour of the method
    #
    # ==== Attributes
    #
    # * +name+ - Document the first attribute
    #
    # ==== Examples
    #
    # Illustrate the behaviour of the method using examples. Indent examples:
    #
    #    display_name("John")
```
