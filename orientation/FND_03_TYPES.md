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
> 5/4
> 5.0/4
> 4-2
> 4.0-2
```

## Strings

In ruby, a string is just some text.

```ruby
name = "Max"
puts name + "well"
puts "cuckoo" * 5
```

## Booleans & Nil

In ruby, boolean can either be true or false. There is also a `nil` object in Ruby.

```ruby
puts true.class
puts false.class
puts nil.class
```


## Symbols

Symbols are denoted by the colon before the name and are immutable. A Symbol is the most basic Ruby object you can create. It's just a name and an internal ID. Symbols are useful because a given symbol name refers to the same object throughout a Ruby program.

```ruby
puts :steve
puts :steve.to_s
puts :steve.object_id
puts :steve.class
```


## Arrays

A Ruby arrays are ordered, integer-indexed collections of any object. The example below is storing strings, an integer, and even another list inside a list.

```ruby
junk = Array.new(5)
junk = ['carrots', 'celery', 'kale', 2, ['peas', 'corn']]
puts "#{junk.at(4)}"
junk.insert(1, 'kidney beans')
junk << [True, 'tornado']
junk.push('hurricane')
puts "#{junk}"
```

## Hashes

A Hash is a dictionary-like collection of unique keys and their values. Also called associative arrays, they are similar to Arrays, but where an Array uses integers as its index, a Hash allows you to use any object type.

```ruby
junk = Hash.new
junk = { "name" => "Steve", "age" => 47, "role" => "Head Coach" }
junk["kids"] = 2
print junk
```

## Constants

A constant has a name starting with an uppercase character. It should be assigned a value at most once. In the current implementation of ruby, reassignment of a constant generates a warning but not an error

```ruby
Const = 101
```
