# Mary Margaret

In this exercise, you're going to use object serialization to allow two distinct Ruby modules pass a hash back and forth, while they are running independently of each other.

You will execute each module seperately, and each one will augment a hash, and then serialize it to a file.

## Setup

```
mkdir -p ~/workspace/ruby/exercises/memories && cd $_
touch mary.rb
touch margaret.rb
```

## Requirements

1. Create a `mary.rb` module that contains a `Mary` class.
1. Create a `margaret.rb` module that contains a `Margaret` class.
1. Each module must accept one command line argument that is a message to add to a list *(see example below)*.
1. Each module must be able to serialize a hash to a file named `messages`.
1. Each module must be able to deserialize the hash stored in `messages`.
1. Each module, after the object is deserialized from the file, must add the message to the appropriate list in the hash.
1. Each module must [handle exceptions](../FND_10_EXCEPTION_HANDLING.md) properly. You may encounter the following while testing your logic.
    1. `FileNotFoundError`
    1. `EOFError`
    1. `KeyError`

> **Tip:** For serialization, use `YAML.load()` and `YAML.dump()` so that file is a yaml file.


###### Hash structure

```ruby
{
    "Mary" => ["Hi, I'm Mary", "I like jet planes"],
    "Margaret" => ["Hi, I'm Margaret", "I like cookies"]
}
```

###### Command line syntax

```bash
ruby mary.rb "Hi, I'm Mary"
```
