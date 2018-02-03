# Enumerable

Much of what we do in porgramming involves working with collections. The [Enumerable](https://ruby-doc.org/core-2.4.2/Enumerable.html) module enables us to do so succinctly with methods and enable us to traverse, manipulate, transform, and sort the data in collections. Basically, the Enumerable module is like Javascript's specialized array methods plus lodash's utilities.

## Map

Let's take a lists of strings, and build a new list, with each item modified a bit.

```ruby
>> flowers = ["Lily", "Snapdragon", "Rose", "Tulip"]
```

If we wanted to transform these in some way, we could instantiate a new array, loop through ```flowers``` , capitalize each one and push it to the new array. 
That would be intuitive, but very procedural and over time, lead to a lot of repetiitive code that misses out on the built in awesomeness of the enumerable mixin.

Instead, we're gonna map:

```ruby

>> flowers.map {|flower| flower.upcase }
=> ["LILY", "SNAPDRAGON", "ROSE", "TULIP"]

```

Just like in Javascript, map can be called on this array, each flower is passed in, uppercased, and returned in a **new** array.

```ruby
# notice flowers is not changed
>> flowers
=> ["Lily", "Snapdragon", "Rose", "Tulip"]
```

If we want the uppercased flowers we need to give assign them to a local variable:

```ruby

>> big_flowers =  flowers.map {|flower| flower.upcase }
=> ["LILY", "SNAPDRAGON", "ROSE", "TULIP"]
>> big_flowers
=> ["LILY", "SNAPDRAGON", "ROSE", "TULIP"]


#flowers is still not changed
>> flowers
=> ["Lily", "Snapdragon", "Rose", "Tulip"]

```


## Select 

Say you want only the items in a collection who match certain criteria. In Javascript, you had filter. Now there is select: 

```ruby

>> flowers.select {|flower| flower.length > 4 }
=> ["Snapdragon", "Tulip"]

```

```ruby

favorite_colors = {

    :casey => "rainbow",
    :jisie => "black",
    :brenda => "rainbow",
    :gilbert => "red",
    :john => "blue",
    :steve => "pink",

}

puts favorite_colors.select { |k,v| v == "rainbow"}

=> {:casey=>"rainbow", :brenda=>"rainbow"}

```

You can drill down as deep as you need:

```ruby
favorite_colors = {

    :baj24tfu2e => {
        :color =>"rainbow",
        :name => "casey"
    },
    :j123h4 => {
        :color =>"black",
        :name => "jisie"
    },
    :jh123h4 => {
        :color =>"rainbow",
        :name => "brenda"
    },
    :ji8hfasu => {
        :color =>"red",
        :name => "gilbert"
    },
    :hu23gf3n => {
        :color =>"blue",
        :name => "john"
    },
    :kn412vi => {
        :color =>"pink",
        :name => "steve"
    },

}

puts favorite_colors.select { |k,v| v[:color] == "rainbow"}

=> {

    :baj24tfu2e=> { 
        :color=>"rainbow", 
        :name=>"casey"},

    :jh123h4=> {
            :color=>"rainbow", 
            :name=>"brenda",
            }
    }

```

## Reduce

Sometimes you need to reduce a collection to a single value.


```ruby

# add them up
>> numbers = [1,2,3,4,5,6]
>> numbers.reduce {|sum, num|  sum + num}
=> 21

# summing is actually so common you can just call .sum
# the fun never stops

# average
 numbers.sum / numbers.size
=> 3

```


There are countless goodies in the enumurable module which are well worth your time. Go [check it out](https://ruby-doc.org/core-2.4.2/Enumerable.html)


