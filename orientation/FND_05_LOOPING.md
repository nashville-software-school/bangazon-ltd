# Looping Over Collections

## Looping Lists

```ruby
flowers = ['Lily', 'Snapdragon', 'Rose', 'Tulip']
for f in flowers
    large_flowers.append('a large ' + f)
end
puts(large_flowers)

['a large Lily', 'a large Snapdragon', 'a large Rose', 'a large Tulip']
```

## Looping Dictionaries

Using a `for` loop on a hash, will loop over both keys and values.

```ruby
family = { 'mother' => 'Margaret', 'father' => 'Reginald', 'sister' => 'Jenny'}
for f in family:
    puts f
end
mother
Margaret
father
Reginald
sister
Jenny
```

If you want to look at both the keys and the values, you can loop using `.each`.

```ruby
family = { 'mother' => 'Margaret', 'father' => 'Reginald', 'sister' => 'Jenny'}
family.each do |key, value|
    puts "#{key}: #{value}"
end
mother: Margaret
father: Reginald
sister: Jenny
```

## Until loop

Until loops execute code while conditional is false.

```ruby
numbers = [1,2,3,4,5,6,7]
i = 0
until numbers[i] >4 do
  puts "Current number: #{numbers[i]}"
  i += 1
end
```
