# ZODIAC

## Setup

```
mkdir -p ~/workspace/ruby/exercises/enumerable && cd $_
touch main.rb
```

## Instructions

Given the following array and hash, use the Enumerable module for the following exercises:

```ruby
zodiac = {
    :aquarius => {
        :element => "Air",
        :start_date => "January 20",
        :end_date => "February 18"
    },
    :pisces => {
        :element => "Water",
        :start_date => "February 19",
        :end_date => "March 20"
    },
    :aries => {
        :element => "Fire",
        :start_date => "March 21",
        :end_date => "April 19"
    },
    :taurus => {
        :element => "Earth",
        :start_date => "April 20",
        :end_date => "May 20"
    },
    :gemini => {
        :element => "Air",
        :start_date => "May 21",
        :end_date => "June 20"
    },
    :cancer => {
        :element => "Water",
        :start_date => "June 21",
        :end_date => "July 22"
    },
    :leo => {
        :element => "Fire",
        :start_date => "July 23",
        :end_date => "August 22"
    },
    :virgo => {
        :element => "Earth",
        :start_date => "August 23",
        :end_date => "September 22"
    },
    :libra => {
        :element => "Air",
        :start_date => "September 23",
        :end_date => "October 22"
    },
    :scorpio => {
        :element => "Water",
        :start_date => "October 23",
        :end_date => "November 21"
    },
    :sagittarius => {
        :element => "Fire",
        :start_date => "November 22",
        :end_date => "December 21"
    },
    :capricorn => {
        :element => "Earth",
        :start_date => "December 22",
        :end_date => "January 19"
    }
}

chinese_animal_zodiac = ["Rat", "Ox"
"Tiger", "Rabbit", "Dragon", "Snake", "Horse", "Goat", "Monkey"
"Rooster", "Dog", "Pig"]

```

1. Print out an array of just the 12 zodiac signs.

2. Convert all the dates from class `String` to class `Date`.

3. Create a new hash where the keys are the elements and the value is an array of the signs of each element. Print this out.

```
zodiac_elements = {
    :water => ["scorpio", "cancer", "pisces"]
}
```

4. Go through the new hash and convert all zodiac sign names to all capital letters.

5. With the hash `zodiac`, for each sign, print out a sentence that has the following format: "The [name of sign], from [start date] to [end date] is a [element] sign."

6. Select and print out the name of the signs which have start dates in the second and third quarter of the year(April to September).

7. Partition the array `chinese_animal_zodiac` into two arrays. One should contain the strings that start with letters A-M. The other should contain strings that start with letters N-Z.

8. Create a new array of numbers where each number is a length of the strings in `chinese_animal_zodiac`. Add all these numbers to get the total.

9. Sort the array `chinese_animal_zodiac` so that the shortest word is the first element and the longest word is the last element.

10. Print out all words that start with the letter "R".
