# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  i = 0
  small_value = 0
  small_key = ""
  name_hash.collect do |name, value|
    if i == 0
      small_value = value
      small_key = name
      i += 1
    elsif value < small_value
      small_value = value
      small_key = name
    end
  end
  if i == 0
  	nil
  else
    small_key
  end
end