# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

#def key_for_min_value(name_hash)
  #name_hash.key(name_hash.collect{|key,value| value}.sort.first)

#end

def key_for_min_value(name_hash)
  values = name_hash.collect{|key,value| value}
  i = 0
  min = values[0]
  while i < values.length
    if values[i] < min
      min = values[i]
    end
    i += 1
  end
    name_hash.key(min)
end
