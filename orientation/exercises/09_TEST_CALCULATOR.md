# Calculator Unit Tests

Just like you did in JavaScript when you learned about Jasmine, you're going to create a class that test the functionality of a Calculator class.

### Resources

* [minitest documetation](http://docs.seattlerb.org/minitest/)
* [minitest repo](https://github.com/seattlerb/minitest)
* [a good blog about getting started with minitest](http://blog.teamtreehouse.com/short-introduction-minitest)

##### Starter code for test class

```ruby
require 'minitest/autorun'
require_relative 'calculator'

class TestCalculator < Minitest::Test

  def setup
    puts "set up"
    @calc = Calculator.new
  end

  def test_add
    assert_equal 4, @calc.add(2,2)
  end
  
  # Write test methods for subtract, multiply, and divide
  
  
  
  

  def teardown
    puts "tear down"
  end

  

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
