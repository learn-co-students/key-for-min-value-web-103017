# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  cheapest = nil
  min = 0
  name_hash.each do |item, value|
    if min == 0 || min > value
      min = value
      cheapest = item
    end
  end
  cheapest
end
