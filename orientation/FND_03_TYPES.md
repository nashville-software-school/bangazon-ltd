# Types and Objects

Everything is an object in Ruby and everything has a class.

```
> nil.class
=> NilClass

> true.class
=> TrueClass

> 1.class
=> Integer

> 1.2345.class
=> Float

> def test
?>   puts "hello world"
?>end

> test.class
=> NilClass

> hash = { "color" => "blue", "size" => 9090 }
> hash.class
=> Hash

> reindeer = ["dasher", "dancer", "prancer", "vixen", "olive"]
> reindeer.class
=> Array

```

## Numbers

In ruby, numbers are either integers or floating point numbers.

```
▶ irb --simple-prompt
>> 5.class
=> Integer
>> 5.687.class
=> Float
>>
```

## Strings

In ruby, a string is just some text. You can concatenate them. 

```ruby
>> name = "Casey"
=> "Casey"
>> full_name  = "Casey" + " " + "James" + " " + "Dailey"
=> "Casey James Dailey"
```

You can express values through string interpolation.

```ruby
>> age = 31
=> 31
>> puts "#{full_name} is #{age} years old."
Casey James Dailey is 31 years old.
```

Ruby's [String](https://ruby-doc.org/core-2.4.0/String.html) class is jam-packed with all kinds of fantastic functionality. It is one of the many strengths of the language and it's worth getting to know more. 

## Booleans & Nil

In ruby, boolean can either be true or false. There is also a `nil` object in Ruby. These act a little different than you might expect coming from javascript and it would be qise to [read the docs](https://ruby-doc.org/core-2.1.1/TrueClass.html).

```ruby
puts true.class
puts false.class
puts nil.class
```


## Symbols

[Symbols](https://ruby-doc.org/core-2.4.2/Symbol.html) are denoted by the colon before the name and are immutable. A Symbol is the most basic Ruby object you can create. Think of it a super simple string. It's just a name and an internal ID. Symbols are useful because a given symbol name refers to the same object throughout a Ruby program. You will use symbols as ;the keys in you hashes. 

```ruby
puts :steve
puts :steve.to_s
puts :steve.object_id
puts :steve.class
```


## Arrays

A Ruby [arrays](https://ruby-doc.org/core-2.1.1/Array.html) are ordered, integer-indexed collections of any object. The example below is storing strings, an integer, and even another list inside a list. We're initializing the array with the new constructor, but you can also use the literal syntax as well.

```ruby
>> junk = Array.new(5)
=> [nil, nil, nil, nil, nil]

>> other_junk = []
=> []
```

Ruby givesus many ways to put values into the array and access them:

```

# literal
junk = ['carrots', 'celery', 'kale', 2, ['peas', 'corn']]

# accessing item at index 4
>> puts "#{junk.at(4)}"
["peas", "corn"]

# using insert
>> junk.insert(1, 'kidney beans')
=> ["carrots", "kidney beans", "celery", "kale", 2, ["peas", "corn"]]

# using the shovel operator to add
>> junk << [true, 'tornado']
=> ["carrots", "kidney beans", "celery", "kale", 2, ["peas", "corn"], [true, "tornado"]]

# good ole push
>> junk.push('hurricane')
=> ["carrots", "kidney beans", "celery", "kale", 2, ["peas", "corn"], [true, "tornado"], "hurricane"]

```

## Hashes

A [Hash](https://ruby-doc.org/core-2.1.1/Hash.html) is a dictionary-like collection of unique keys and their values. Also called associative arrays, they are similar to Arrays, but where an Array uses integers as its index, a Hash allows you to use any object type. 

```ruby

# using the new constructor 
>> junk = Hash.new
=> {}

# using literals to assogn string keys
>> junk = { "name" => "Steve", "age" => 47, "role" => "Head Coach" }
=> {"name"=>"Steve", "age"=>47, "role"=>"Head Coach"}

#using computed member access to create and assign a value to the kids property
junk["kids"] = 2
=> 2
>> junk
=> {"name"=>"Steve", "age"=>47, "role"=>"Head Coach", "kids"=>2}

#declaring with a literal
>> nss = {}
=> {}

# now we're using symbols as the names for the keys
# this is the convention, as symbols are super simple and therefore 
# easier to track and handle
nss[:best_cohort] = 21
>> nss
=> {:best_cohort=>21}
>> nss[:graduates] = 500
>> nss[:approach] = "full-stack immersion"
>>  nss[:awesome] = true
>>  
>> nss
=> {
    :best_cohort=>21, 
    :graduates=>500, 
    :approach=>"full-stack immersion", 
    :awesome=>true
}

```

## Constants

A [constant](https://ruby-doc.org/docs/ruby-doc-bundle/UsersGuide/rg/constants.html) is all caps by convention. It should be assigned a value at most once. In the current implementation of ruby, reassignment of a constant generates a warning but not an error, but seriously, what good is a constant that you re-assign

```ruby
CONST = 101
```
