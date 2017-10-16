def key_for_min_value(name_hash)
    min_value = Float::INFINITY
    min_key = nil
    name_hash.each do |key, value|
       if value < min_value
           min_value = value
           min_key = key
        end
    end
   min_key
end
