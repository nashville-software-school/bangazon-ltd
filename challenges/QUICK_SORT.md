# Quick sort

In this exercise, you will implement the quick sort algorithm and use it to sort an array of numbers.

## References

* [Quick sort](http://me.dt.in.th/page/Quicksort/)
* [Quick sort algorithm](https://www.tutorialspoint.com/data_structures_algorithms/quick_sort_algorithm.htm)

## Quick Sort Algorithm Steps

1. Choose the last element in the array as the Pivot element.

2. Move all elements less than the pivot to left side of the pivot element and all elements greater than the pivot to the right side of it.

3. Recursively sort the two arrays on either side of the pivot element.


## Setup

```
mkdir -p ~/workspace/ruby/challenges && cd $_
touch quick_sort.rb
```

## Instructions

1. Create a class called `Sort`. This class should contain two methods. The `is_num_array?` that takes an argument, checks if it's an array of numbers and accordingly returns a boolean. The `quick_sort` method will implement the steps of the quick sort algorithm to sort the array unless `is_num_array?` returns false. `quick_sort` should return the sorted array.

2. Create an object of class Sort and call the method `quick_sort` to sort any array of numbers.

3. BONUS: Look up the algorithms for merge sort, insertion sort, bubble sort and heap sort and add methods to your class that implement those sorting algorithms.

```
$ quick_sort([6,5,23.6,0,51,34,17.05])
=> [0,5,6,17.05,23.6,34,51]
```
