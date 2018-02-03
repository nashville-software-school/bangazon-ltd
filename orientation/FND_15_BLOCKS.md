# Ruby Blocks

Blocks are just chunks of code. They can be input for another method. They are similar to anonymous functions in JavaScript. Blocks can have input values and can return values.

```ruby
# One line block
[1,2,3].each { |num| puts "#{num}! " }

# Multiple line block
[1,2,3].each do |num|
  puts "#{num}!"
end
```

## Procs

Procs are identical to blocks with the added functionality that they can be assigned to a variable, which you can then pass in as arguments into functions. This means that procs are objects

```ruby
my_proc = Proc.new do
  puts 'My proc'
end

my_proc.call
```

## Lambdas

Lambdas are proc objects except for the following differences: Lambdas are strict about the number of arguments passed in, in contrast to procs which will not raise an exception if given the wrong number of arguments. When there is a return statement in a lambda, the code right outside the lambda gets executed. While with procs, a return statement excutes the code from where the proc was executed.

```ruby
my_lambda = lambda {puts 'My lambda'}

my_lambda.call
```
