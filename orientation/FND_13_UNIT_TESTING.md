# Unit Testing

You got an introduction to unit testing during your front end course work. On the server side, unit testing becomes easier, and more straightfoward because you don't have user interfaces to worry about. No functional testing at all.

Server side code is all about constrained inputs and verifiable outputs. Perfect for unit testing.

Read [an introduction to minitest](https://launchschool.com/blog/assert-yourself-an-introduction-to-minitest) in Ruby.

Just like with Jasmine for your JavaScript, you should use your unit tests as part of your design stage. Write as many unit tests as you can for your initial classes and methods. Once you feel you have good coverage for the basic logic of your application, then you begin writing simple implementations of the code in order to make the tests pass.

## Example

Ruby provides its own unit testing framework named, `minitest`. Here's a sample class for running unit tests.

① The test class must sub-class `unittest.TestCase`

② Each function in the class must start with `test_`

```ruby
require 'minitest/autorun'
require_relative 'StringMethods.rb'

class TestStringMethods < MiniTest::Test

    def test_upper
        assertEqual'foo'.upcase, 'FOO'
    end

    def test_split
        s = "hello world"
        assertEqual(s.split(" "), ["hello", "world"])
        # check that s.split() fails when the separator is not a string
        assert_raises TypeError do
            s.split(2)
        end

    end
end
```

## Code Coverage

You can use the the following gem [minitest-coverage](https://github.com/seattlerb/minitest-coverage), to ensure that your test suite has [100% coverage](http://blog.liw.fi/posts/unittest-coverage/) of your application's logic.


# Resources

* [The Magic Tricks of Testing](https://www.youtube.com/watch?v=URSWYvyc42M) - The concepts are the key takeaway.
