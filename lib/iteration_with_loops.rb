def join_nested_strings(src)
  # src will be an Array of Arrays of Strings and Integers
  # Combine all Strings present in the AoA into a single value and return it
  reduced = ''
  row_index = 0
  while row_index < src.count do
    element_index = 0
    while element_index < src[row_index].count do
      see = src[row_index][element_index]
      reduced += ' ' + see if see.kind_of?(String)
      element_index += 1
    end
    row_index += 1
  end
  reduced[0] = ''
  reduced
end