def contains?(hash, search_value)
  # Write a method that recursively searches for a value in a nested hash.
  # It should return `true` if the object contains that value.
  #
  # Examples:
  # contains?({ foo: { bar: "baz", test: "egg" } }, "egg") # true
  # contains?({ foo: { bar: "baz" } }, "egg") # false
  hash.each do |key,value|
    if value == search_value 
      return true
    elsif value.instance_of?(Hash)
      if contains?(value,search_value)
        return true
      end
    end
  end
  return false
end