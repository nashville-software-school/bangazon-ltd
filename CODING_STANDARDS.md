# Bangazon Ltd Coding Standards

We will be following the [Ruby Community's coding guidelines](https://www.python.org/dev/peps/pep-0008/). Here are the big tickets items. Please read the style guide for more information.


# Order of Code

1. Header block with author's name, Perforce Id tag and a brief description of what the program or library is for.
1. `require` statements
1. `include` statements
1. Class and module definitions
1. Main program section
1. Testing code

Testing code would look something like this:

```rb
if __FILE__ == $0
  ...
end
```

## Line Length

The maximum length of any line of your code should be 80 characters 

## Indentation

Indent your code with two spaces per logical level.

## Naming Things

Avoid single character variable names for anything except counters and iterators.

The standard Ruby file extension is .rb, although many people working on UNIX-like systems don't bother with it for stand-alone scripts. Whether or not you use it for scripts is up to you, but you will need to use it for library files or they will not be found by the interpreter.

Class and module names should be in camel-case, e.g:

```rb
Class BigFatObject
```

Class names should be nouns. In the case of modules, it's harder to make a clear recommendation. The names of mix-ins (which are just modules) should, however, probably be adjectives, such as the standard `Enumerable` and `Comparable` modules.

Constants should be named using all upper-case characters and underscores, e.g.

```rb
BigFatObject::MAX_SIZE
```

They should also be nouns.

Method names should be named using all lower-case characters and underscores. If possible, the name should be a verb, e.g.

```rb
BigFatObject#pare_down
```

Variable names should be named using all lower-case characters and underscores, but unlike method names, try to pick nouns, e.g. `size`. This applies to local, global, instance and class variables alike. However, there's a case to be made for keeping the names of local variables shorter than those of variables that will be made externally available, such as instance variables. For example, you might want to use `resp_code` as a local variable, but `@response_code` as an instance variable.

We also recommend that you read the [community driven Ruby style guide](https://github.com/bbatsov/ruby-style-guide)
