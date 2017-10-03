# Not Hello, World

## Setup

Here's your very first Ruby code module. Go ahead and create a new directory for storing your Ruby code and create a file named `humansizes.rb`.

```
mkdir ~/workspace/ruby/intro && cd $_
touch humansizes.rb
subl .
```

Next, copy pasta the code in the [humansizes.rb](humansizes.rb) into yours. 

## Running a Module of Code

In your CLI, execute the module of code by typing `ruby humansizes.rb`.

## Code Review

Let's take a look at the code.

```ruby

① SUFFIXES = {1000 => ["KB", "MB", "GB", "TB", "PB", "EB", "ZB", "YB"],
            1024 => ["KiB", "MiB", "GiB", "TiB", "PiB", "EiB", "ZiB", "YiB"]}

② def approximate_size(size, a_kilobyte_is_1024_bytes=true)

③   if size < 0
        raise ArgumentError, "Argument must be non-negative"
    end

④   multiple = a_kilobyte_is_1024_bytes ? 1024 : 1000
    for suffix in SUFFIXES[multiple]
        size /= multiple
        if size < multiple
            return "{0:.1f} {1}".format(size, suffix)
        end
    end        
    raise "Number too large"

⑤   puts approximate_size(16384, False)
    puts approximate_size(-16384)
```

> ☞ Like JavaScript, Ruby is a dynamically typed language, meaning that the compiler determines the type of a variable at run-time. CLI prompting for input

① This looks like an object from JavaScript, but in Ruby, it's called a hash.

② In JavaScript, you used the `function` to define functions, but in Ruby, it's a method using the keywords `def` and `end`. Unlike JavaScript, functions are not first-class objects. Therefore, they can not be passed to other functions, returned from other functions or stored in a data structure.

③ For `if` and `for` blocks, you don't use {} to define the block scope. An if expression's conditional is separated from code by the reserved word then, a newline, or a semicolon. A `for` loop's expression is separated from code by the reserved word do, a newline, or a semicolon.

④ This is the style for writing a ternary condition in Ruby. Ruby methods ALWAYS return the evaluated result of the last line of the expression unless an explicit return comes before it.

⑤ The `puts` method is Ruby's `console.log()`
