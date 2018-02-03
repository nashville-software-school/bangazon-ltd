# Working with Files in Ruby

* [docs](https://ruby-doc.org/core-2.4.2/File.html)
* [helpful exercise](https://learnrubythehardway.org/book/ex15.html)
* [another helpful exercise](https://learnrubythehardway.org/book/ex16.html)


# Car Models

Use Ruby to build a console app that interacts with two files:

1. `car-makes`
1. `car-models`

## Car Makes

This file should contain just the names of several makes.

###### car-makes

```
Toyota
Nissan
...
```

## Car Models

This file should contain the names of several models for each make. The format will be as follows.

```
{first letter of make}={model name}
```

###### car-models

```
T=Camry
N=Altima
...
```


## Requirements

1. Create a single class that implements all functionality.
1. Create a method for reading the car makes file.
1. Create a method for reading the car models file.
1. Create a method that invokes the previous two methods and generates a hash.
    1. The hash keys will be the make names.
    1. The value for each key will be a list of model names.

```
{
    "Toyota" => ["Camry"],
    ...
}
```
