# Squared Randoms

## Setup

```
mkdir -p ~/workspace/ruby/exercises/lists && cd $_
touch random_squared.rb
```

## References

* [Random module](http://ruby-doc.org/core-2.0.0/Random.html)
* [Ruby Arrays](https://ruby-doc.org/core-2.2.0/Array.html)

## Instructions

1. Using the `Random` class, generate a list of 20 random numbers between 0 and 49.
    ```
    prng = Random.new

    random_numbers = [...insert awesome code here...]
    puts(random_numbers)
    ```
2. With the resulting array, build a new array that contains each number squared. For example, if the original list is `[2, 5]`, the final list will be `[4, 25]`.
