# Calculator Unit Tests

Just like you did in JavaScript when you learned about Jasmine, you're going to create a class that test the functionality of a Calculator class.

##### Starter code for test class

> **Note**: The [`setUpClass`](https://docs.python.org/3.6/library/unittest.html#unittest.TestCase.setUpClass) method below must have the `@classmethod` decorator above it.

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
    """Performs the four basic mathematical operations

    Methods:
     add(number, number)
     subtract(number, number)
     multiply(number, number)
     divide(number,number)
    """

    def add(firstOperand, secondOperand):
        """Adds two numbers together

        Arguments:
          firstOperand - Any number
          secondOperand - An number
        """

        return firstOperand + secondOperand
    end
end
```

## Running the test class

```
ruby test_calculator.rb
```
