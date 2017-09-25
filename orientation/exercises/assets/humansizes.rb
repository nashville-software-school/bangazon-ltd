Suffixes = {
            1000 => ['KB', 'MB', 'GB', 'TB', 'PB', 'EB', 'ZB', 'YB'],
            1024 => ['KiB', 'MiB', 'GiB', 'TiB', 'PiB', 'EiB', 'ZiB', 'YiB']
            }

# Instead of the word `function`, in Ruby, you use `def`
def approximate_size(size, a_kilobyte_is_1024_bytes=true)

    if size < 0
        raise ArgumentError, 'number must be non-negative'
    end

    multiple = a_kilobyte_is_1024_bytes ? 1024 : 1000
    for suffix in Suffixes[multiple]
        size /= multiple
        if size < multiple
            return "#{size} #{suffix}"
        end
    end

    raise ValueError("number too large")
end

print approximate_size(16384, false)
print approximate_size(size=16384, a_kilobyte_is_1024_bytes=true)
print approximate_size(-16384)
