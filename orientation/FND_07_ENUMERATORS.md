# Enumerator

An iterator is usually used to access the individual elements of an object with a collection. There can be two ways to do this: Internal iteration is when the object controls the iterator. The Enumerable class is internal iteration. External iteration means the iterator is controlled by the client. The [Enumerator](https://ruby-doc.org/core-2.2.0/Enumerator.html) class provides internal and external iteration for Ruby. External iteration is especially useful if you may not want to iterate through the elements in your object in the order they are in. Enumerator is enumerable.

## Internal Iteration

```ruby

>> o = Object.new
>> def o.each
    yield 1
    yield 2
    yield nil
    yield [1, 2]
  end
>> o.each {|c| puts c }

```

## External Iteration

``` ruby
>> flowers = ["Lily", "Snapdragon", "Rose", "Tulip"]
>> enum = flowers.to_enum

>> enum.next
=> "Lily"
>> enum.next
=> "Snapdragon"
>> enum.next
=> "Rose"
>> enum.next
=> "Tulip"
>> enum.next
=> StopIteration: iteration reached an end
>> enum.rewind
>> enum.next
=> "Lily"

```

Another way to create and external iterator is to call an internal iterator on the object and don't pass in a block.

``` ruby
>> flowers = ["Lily", "Snapdragon", "Rose", "Tulip"]
>> enum = flowers.each
>> enum.class
=> Enumerator

enum = flowers.map
enum.class
=> Enumerator
```
