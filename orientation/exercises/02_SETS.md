# Ruby Car Sets

## Setup

```
mkdir -p ~/workspace/ruby/exercises/sets && cd $_
touch cars.rb
```

## Docs

* [Ruby sets](http://ruby-doc.org/stdlib-2.4.2/libdoc/set/rdoc/Set.html)
* [Intersection](http://ruby-doc.org/stdlib-2.4.2/libdoc/set/rdoc/Set.html#method-i-intersection)
* [Inspect](http://ruby-doc.org/stdlib-2.4.2/libdoc/set/rdoc/Set.html#method-i-inspect)

## Instructions

1. Create an empty set named `showroom`.
1. Add four of your favorite car model names to the set.
1. Print the length of your set.
1. Pick one of the items in your show room and add it to the set again.
1. Print your showroom. Notice how there's still only one instance of that model in there.
1. Add two more car models to your showroom with another set.
1. You've sold one of your cars. Remove it from the set.

### Acquiring more cars

1. Now create another set of cars in a variable `junkyard`. Someone who owns a junkyard full of old cars has approached you about buying the entire inventory. In the new set, add some different cars, but also add a few that are the same as in the `showroom` set.
1. Use the `intersection` method to see which cars exist in both the showroom and that junkyard.
1. Now you're ready to buy the cars in the junkyard. Use the `union` method to combine the junkyard into your showroom.
1. Remove any cars that you acquired from the junkyard that you don't want in your showroom.
