# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  ordered = name_hash.sort_by { |k, val| val}
  the_one = ordered.first.to_a
  the_one[0]

  # ordered_values = name_hash.map { |name, num| num }
  # prop = ordered_values.sort
  # lowest_value = prop[]
  # name_hash.each do |key, value|
  #   if value = low_index
  #     lowest_value = key
  #   end
  # end
  # lowest_value
end
