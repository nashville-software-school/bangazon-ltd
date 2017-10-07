# Ruby Planet Array

## Setup

```
mkdir -p ~/workspace/ruby/exercises/lists && cd $_
echo 'planet_list = ["Mercury", "Mars"]' >> planets.rb
```

## Reference

* [Ruby Arrays](http://ruby-doc.org/core-2.4.2/Array.html)


## Exercise

1. Use `push()` to add Jupiter and Saturn at the end of the array.
1. Use the `concat()` method to add another array of the last two planets in our solar system to the end of the array.
1. Use `insert()` to add Earth, and Venus in the correct order.
1. Use `<<` ("shovel operator") to add Pluto to the end of the array.
1. Now that all the planets are in the array, slice the array in order to get the rocky planets into a new list called `rocky_planets`.
1. Being good amateur astronomers, we know that Pluto is now a dwarf planet, so use the `pop` operation to remove it from the end of `planet_list`.

## Iterating over planets

1. Create another array containing arrays where each array will hold the name of a spacecraft that we have launched, and the names of the planet(s) that it has visited, or landed on. (e.g. `['Cassini', 'Saturn']`).
1. Iterate over your array of planets, and inside that loop, iterate over the array of arrays. Print, for each planet, which satellites have visited.
