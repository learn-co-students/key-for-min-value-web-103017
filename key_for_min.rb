def key_for_min_value(name_hash)

  counter = 1
  items = []
  min = nil

  if name_hash.length==0
    return nil
  end

  name_hash.each do |key, value|
    items.push(key)
  end

  name_hash.each do |key, value|

    if counter > name_hash.length-1
      break

    else
      next_item = name_hash[items[counter]]

      if counter > 1

        if name_hash[min] >= next_item
          min = items[counter]
        end

      else

        if value <= next_item
          min = key
        else
          min = items[counter]
        end

      end

    end
    counter += 1
  end
  
  return min
end
