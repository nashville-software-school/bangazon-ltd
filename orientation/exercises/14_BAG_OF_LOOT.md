# Bag o' Loot

### As always, READ THE DOCS: [command line parameters](http://ruby-doc.org/core-2.4.2/ARGF.html).

### Checkout these exercises too:
* [parameters, unpacking and variables](https://learnrubythehardway.org/book/ex13.html)
* [prompting and passing](https://learnrubythehardway.org/book/ex14.html) 

* [command line args on codecademy](https://www.codecademy.com/articles/ruby-command-line-argv)

## Setup

```
mkdir -p ~/workspace/ruby/exercises/cli && cd $_
touch lootbag.rb
```

## Instructions

You have an acquaintance whose job is to, once a year, delivery presents to the best kids around the world. They have a problem, though. There are so many good boys and girls in the world now, that their old paper accounting systems just don't cut it anymore. They want you to write a program that will let them do the following tasks.

1. Add a toy to the bag o' loot, and label it with the child's name who will receive it. The first argument must be the word `add`. The second argument is the gift to be delivered. The third argument is the name of the child.

    ```bash
    ruby lootbag.rb add kite suzy
    ruby lootbag.rb add baseball michael
    ```

1. Remove a toy from the bag o' loot in case a child's status changes before delivery starts.

    ```bash
    ruby lootbag.rb remove suzy kite
    ruby lootbag.rb remove michael baseball
    ```

1. Produce a list of children currently receiving presents.

    ```bash
    ruby lootbag.rb ls
    ```

1. List toys in the bag o' loot for a specific child.

    ```bash
    ruby lootbag.rb ls suzy
    ```

1. Specify when a child's toys have been delivered.

    ```bash
    ruby lootbag.rb delivered suzy
    ```


## Requirements

**Write a test before you write implementation code**

```ruby
# This is only an example. If I find this code in your project
#  I will make you go back and delete it and write your own test.
def test_toys_for_child_can_be_added_to_bag
    lootBag = Bag.new
    lootBag.add_toy_for_child("kite", "suzy")
    assert_equal("kite", lootBag.child_items("suzy")[0])
end
```

1. Items can be added to bag, and assigned to a child.
1. Items can be removed from bag, per child. Removing `ball` from the bag should not be allowed. A child's name must be specified.
1. Must be able to list all children who are getting a toy.
1. Must be able to list all toys for a given child's name.
1. Must be able to set the *delivered* property of a child, which defaults to `false` to `true`.

## Bonus Features

1. Write a response for the argument `ruby lootbag.rb help` that lists all of the possible arguments, and what they do.
1. Create a shortcut combination of arguments that can remove *all* toys from the bag for a child who has been deemed naughty.

## Persistent Storage

You must persist the data to disk, so that you can use it between executions of the application. You will need to write the data into text files. As for how you store it, create a quick ERD that represents the two types of data in this application.

How are they related to each other?

How can you store that relationship when you are writing the data to disk?

> **Pro tip:** The [SecureRandom](https://ruby-doc.org/stdlib-2.4.0/libdoc/securerandom/rdoc/SecureRandom.html) module in Ruby can generate universally unique identifiers for each set of data that you need to store. For example, there will be children with the same name, so you will need a truly unique identifier for each one.

<table>
<tr>
    <th><h5>child_id</h5></th>
    <th><h5>child_name</h5></th>
</tr>
<tr>
  <td>
  a8098c1a-f86e-11da-bd1a-00112444be1e
  </td>
  <td>
  Victor Hoebling
  </td>
</tr>
<tr>
  <td>
  6fa459ea-ee8a-3ca4-894e-db77e160355e
  </td>
  <td>
  Franz Ferdinand
  </td>
</tr>

</table>
