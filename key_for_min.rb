# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value
myHash = {:blake => 500, :ashley => 2, :adam => 1}
def key_for_min_value(name_hash)
  if name_hash.length == 0
    return nil
  end
  sorted = mySort(name_hash)
  key = getKeys(sorted)
  puts key.first
  return key.first
end

def getKeys(hash)
  keys = []
  hash.each do |key, value|
    keys.push(key)
  end
  return keys
end

def mySort(hash)
  #if block_given?
    hashSize = hash.length
    sortedHash = {}
    #minValue = array[0] #Find first min value and add to new array
    keys = getKeys(hash)
    minValue = hash[keys.first] #grab
    minKey = keys.first

    hash.each do |key, value|
      if value == minValue
        next
      elsif value < minValue
        minValue = value
        minKey = key
      end
    end
    hash.delete(minKey)
    sortedHash[minKey] = minValue

    until sortedHash.size == hashSize
      keys = getKeys(hash)
      minValue = hash[keys.first]
      minKey = keys.first
      hash.each do |key, value|
        if value == minValue
          next
        elsif value < minValue
          minValue = value
          minKey = key
        end
      end
      hash.delete(minKey)
      sortedHash[minKey] = minValue
    end
  return sortedHash
end
key_for_min_value(myHash)
