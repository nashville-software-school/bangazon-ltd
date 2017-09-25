# Basic Exception Handling

Because Ruby is a dynamically typed language, you need to carefully consider how to get the type of a variable and make no assumptions in your code.

Let's look at some basic code and see what harmful side-effects can happen.

```ruby
class BankAccount

  def initialize
    @balance = 0
  end

  def add_money(amount)
    """Add money to a bank account

    Arguments:
      amount - A numerical value by which the bank account's balance will increase
    """
    @balance += amount
  end

  def withdraw_money(amount)
    """Withdraw money to a bank account

    Arguments:
      amount - A numerical value by which the bank account's balance will decrease
    """
    @balance -= amount
  end
end
```

Given this class, a developer could easily write this code.

```ruby
my_account = BankAccount.new
my_account.add_money('Gazillion dollars')
```

This will raise a `TypeError` exception because the logic for the `add_money()` tries to perform a mathematical calculation on the value that is stored in the `amount` argument. We passed in a string, so Ruby will yell at us: `String can't be coerced into Integer`

So we need to think about these kinds of issues when writing our code instead of assuming the the code that invokes this method will *always* do the correct thing. We need implement exception handling so that a useful exception is raised to the invoking code.

Let's look at how to do that with `begin...rescue` blocks.

```ruby
  def add_money(amount)
    """Add money to a bank account

    Arguments:
      amount - A numerical value by which the bank account's balance will increase
    """
    begin
      self.balance += amount
      return self.balance
    rescue TypeError => detail
      puts detail
    end
  end
```

Now, if an incorrect type of value is passed, a human-friendly message is output to the console and the exception is re-raised up to the calling code.
