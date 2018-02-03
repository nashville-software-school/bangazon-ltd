# Charmed Polygons

A charmed polygon is a sqaure with a side length of X and contains all the numbers between 1 and X^squared aligned so that each column row and long diagonal of numbers when added together equals the same number.

## Setup

```
mkdir -p ~/workspace/ruby/challenges && cd $_
touch charmed_polygon.rb
touch menu.rb
```

## Instructions

1. Create a class named CharmedPolygon in the charmed_polygon file. It should have one method called create_polygon. The method should take a number, x as an argument. The method should return the square to the terminal:
```
+------------------------+
| 15 |  8 |  1 | 24 | 17 | 
+------------------------+ 
| 16 | 14 |  7 |  5 | 23 | 
+------------------------+ 
| 22 | 20 | 13 |  6 |  4 | 
+------------------------+ 
|  3 | 21 | 19 | 12 | 10 | 
+------------------------+ 
|  9 |  2 | 25 | 18 | 11 | 
+------------------------+ 
```

2. To get x, the program should accept input from the terminal. Menu.rb should contain the logic to get the input.

3. X should equal an odd number, if the given input is not an odd whole number greater than 1 the program should ask for input again. 


