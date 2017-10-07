# Calculator Unit Tests

Just like you did in JavaScript when you learned about Jasmine, you're going to create a class that test the functionality of a Calculator class.

### Resources

* [minitest documetation](http://docs.seattlerb.org/minitest/)
* [repo](https://github.com/seattlerb/minitest)
* [a good blog about minitest](http://blog.teamtreehouse.com/short-introduction-minitest)

##### Starter code for test class

```ruby
require 'minitest/autorun'
require_relative 'calculator'

class TestCalculator < Minitest::Test

  def setup
    puts "set up"
  end

  def test_success
    assert_equal 4, Calculator.new.add(2,2)
  end

  def test_failure
    assert_equal 3, Calculator.new.add(2,2), "Adding doesn't work"
  end

  def teardown
    puts "tear down"
  end


  # Write test methods for subtract, multiply, and divide

end
```

##### Starter code for calculator class

```ruby
class Calculator

    def add(a, b) 
      a + b
    end
end
```

## Running the test class

```
ruby test_calculator.rb
```
