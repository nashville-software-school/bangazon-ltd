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

#incidentally, this works too
>> call_back()
you called?

```

Methods always return the last value evaluated, so 

```ruby

# returns the number, doubled
def double(num)
  num * 2
end

# should print 8
p double(4)


```

Works the same as:

```ruby

def double(num)
  return num * 2
end

# will still print 8
p double(4)

```


The take-away here is that every method call returns something. This value is either the last evaluated statement or the value specified by the `return` keyword. NOTE: if you put specify return, the subsequent statements will not be evaluated.


Sometimes, the methods we call change the object they are called on and return that and sometimes, they return a copy of that object. Ruby gives a helpful way of knowing how that's gonna go and even specifying. This offers a fine bit of readablity and control Javascript never gave us. Check this out: 

```ruby
>> name = "Dumbledore"

# calling the upcase method
# returns an uppercase COPY of the string
>> name.upcase
=> "DUMBLEDORE" # modified copy

# name is still the original string 
>> name
=> "Dumbledore" 


# but when we put the "!" on the method call...
>> name.upcase!
=> "DUMBLEDORE"

# name is now uppercased (modified in-place)
>> name
=> "DUMBLEDORE"

```


Some methods are there to answer questions about an object. In Ruby, these are called predicate methods and they are written like this: 

```ruby
>> number = (24 * 6) / 3
=> 48
>> number.even?
=> true

```


Cool right? Again, Ruby gives us a bit more readability and mastery over our destiny with a simple concept. Predicate methods are especially handy in handling conditional logic:

```ruby

def is_even(number)
  if number.even?
    puts "the number is even"
  else
    puts "the number is odd"
  end
end


is_even(23)

```



Methods are fundamental to much of what we'll do with Ruby. As always, [read the docs](https://ruby-doc.org/core-2.4.2/Method.html)




