# Importing Modules

Importing other modules in Ruby is very similar to how to did it in Browserify or including dependencies in Angular. Ruby uses the keyword [`require`](https://ruby-doc.org/core-2.4.2/Kernel.html#method-i-require) as well.

```ruby

require './humansizes.rb'

```

or 

```ruby

require_relative 'humansizes'

```

Ruby will look in every directory that is defined in `sys.path` for a file, or executable, that matches the name in your import statement. If you ever want to see those locations, you can just run the Ruby interpreter in the CLI and take a look.

By default, Ruby will look in all paths in the global variable `$LOAD_PATH ($:)`.which contains an array. You can see this in your interactice Ruby shell from the CLI.

```
irb

irb(main):015:0> $LOAD_PATH
=> ["/usr/local/Cellar/rbenv/1.1.1/rbenv.d/exec/gem-rehash", "/Users/casey/.rbenv/versions/2.4.2/lib/ruby/gems/2.4.0/gems/did_you_mean-1.1.0/lib", "/Users/casey/.rbenv/versions/2.4.2/lib/ruby/site_ruby/2.4.0", "/Users/casey/.rbenv/versions/2.4.2/lib/ruby/site_ruby/2.4.0/x86_64-darwin16", "/Users/casey/.rbenv/versions/2.4.2/lib/ruby/site_ruby", "/Users/casey/.rbenv/versions/2.4.2/lib/ruby/vendor_ruby/2.4.0", "/Users/casey/.rbenv/versions/2.4.2/lib/ruby/vendor_ruby/2.4.0/x86_64-darwin16", "/Users/casey/.rbenv/versions/2.4.2/lib/ruby/vendor_ruby", "/Users/casey/.rbenv/versions/2.4.2/lib/ruby/2.4.0", "/Users/casey/.rbenv/versions/2.4.2/lib/ruby/2.4.0/x86_64-darwin16"]
irb(main):016:0>

```


### Clear

Wow! That's a lot of output! If, at any point you wanna clear your irb, just type:


<kbd>control</kbd> + <kbd>L</kbd>


## Import Your Module

Let's play with our module:

In the same directory as you humansizes.rb file, require that file as a module:

```ruby
require './humansizes.rb'

```


After it's required, your can call any method in that module.


```ruby

irb(main):019:0> approximate_size(1924861984, false)
=> "1 GB"

```

BOOM. You imported a module in you irb. We're gonna be doing this all over the place in the irb in our own files.
