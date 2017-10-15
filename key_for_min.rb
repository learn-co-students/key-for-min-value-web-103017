# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  if name_hash == {}
    return nil
  end
  low_v = name_hash.to_a[0][1]
  low_k = name_hash.to_a[0][0]
  name_hash.each do |k, v|
    if v < low_v
      low_v = v
      low_k = k
    end
  end
  low_k
end
