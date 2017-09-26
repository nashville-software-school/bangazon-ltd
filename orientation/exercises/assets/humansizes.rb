# in Ruby, a collection of key value pairs is called a 'hash'
# these are like object literals in Javascript and you will use them all the time
# 
# read the docs: 
# https://docs.ruby-lang.org/en/2.0.0/Hash.html
# also, notice, the local variable 'SUFFIXES' is all caps. this a constant.
# this is one of severaly changes in naming conventions you will need to be aware of.
# 
# here's some more docs: 
# https://github.com/bbatsov/ruby-style-guide#naming
#  
SUFFIXES = {
            1000 => ['KB', 'MB', 'GB', 'TB', 'PB', 'EB', 'ZB', 'YB'],
            1024 => ['KiB', 'MiB', 'GiB', 'TiB', 'PiB', 'EiB', 'ZiB', 'YiB']
            }

# Instead of the word `function`, in Ruby, you use `def`
# Notice there's no curly braces to denote the block
# or semicolons to punctuate the end. Instead, you just put "end"
def approximate_size(size, a_kilobyte_is_1024_bytes=true)

    if size < 0
        raise ArgumentError, 'number must be non-negative'
    end

    # remember ternary operators? just like in javascript
    # ruby will evalute the variable 'a_kilobyte_is_1024_bytes' 
    # if it is true, the variable 'multiple' will get the value 1024, 
    # if not, 'multiple' will be assigned the value of 1000
    multiple = a_kilobyte_is_1024_bytes ? 1024 : 1000
    for suffix in SUFFIXES[multiple]
        size /= multiple
        if size < multiple
            # using string interpolation to evaluate expressions
            # just the like the ole '${}' in javascript's string templates
            return "#{size} #{suffix}" 
        end
    end

    raise ValueError("number too large")
end

# say goodbye to console.log()
# it's all "print" and puts" from now on
print approximate_size(16384, false)
puts approximate_size(18935, true)
p approximate_size(16384, false)
print approximate_size(size=16384, a_kilobyte_is_1024_bytes=true)
# print approximate_size(-16384) # this will raise an error