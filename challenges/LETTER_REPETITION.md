# Repeat the alphabet

In this exercise, given a string, you will repeat the characters vertically depending on its position in the alphabet.

## Setup

```
mkdir -p ~/workspace/ruby/challenges && cd $_
touch letter_repetition.rb
```

## Instructions

1. Write a function called `alpha_repeat` that takes one argument. If this argument is not a string, raise an exception that informs the user that this function needs an argument of type string.

2. If the argument is a string, make sure the string only contains letters of the alphabet. Any numbers, symbols etc. should be removed from the string.

3. Use your string to construct an output which vertically repeats each character in the string. The number of times a letter is repeated depends on its position in the alphabet. Assume it's 0-indexed: so A is at index position 0 and would therefore be repeated 0 times, b is at index position 1 and would be repeated 1 time, and so on.

4. Run your function from IRB by requiring the file `letter_repetition.rb`.

```
$ alpha_repeat("abcabc")
=> abcabc
    bc bc
     c  c
```
