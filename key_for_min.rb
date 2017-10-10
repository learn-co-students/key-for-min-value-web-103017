# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  lowest = 1000000000
  low_key = ""

  name_hash.each do |key, value|
    if value < lowest
      lowest = value
      low_key = key
    end
  end

  if name_hash == {}
    nil
  else
    low_key
  end
end
