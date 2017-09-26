# Methods

Just like JavaScript functions, but the syntax is different and now we always call them methods.

```ruby
def display_name(name)
    puts name
end
display_name('Josephina')
```

Unlike in Javascript, you can call a method that just by typing its name 

```ruby

▶ irb --simple-prompt
>> def call_back
>>   puts "you called?"
>> end
>> 
# no parentheses required to invoke
>> call_back
you called?

```


Methods are fundamental to much of what we'll do with Ruby. As always, [read the docs](https://ruby-doc.org/core-2.4.2/Method.html)


## Documentation

You should already be commenting the crap out of your code. If you haven't been, its time to start. 

Here's a little bit about [comments](https://github.com/bbatsov/ruby-style-guide#comments) in Ruby.


You can define documentation programmatically for a function using [YARD](https://yardoc.org/). This is highly encouraged. As part of the [Definition of Done](../EMPLOYEE_HANDBOOK.md) requires full documentation of all methods and classes.

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

