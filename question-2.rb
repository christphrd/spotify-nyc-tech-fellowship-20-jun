def decode_string(s)
  results_arr = []

  #turn string into array of char
  chars = s.chars
  #reverse array and make numbers integers instead of strings
  num_array = chars.map do |char|
    if char.to_i != 0
      char.to_i
    else
      char
    end
  end.reverse

  #find the innermost and multiply by number. combine with the rest of the array
  num_array.each_with_index do |element, index|
    if element == "["
      multiplied = num_array[0..index] * num_array[index + 1]
      results_arr = multiplied.join("").delete("[]").split("") + num_array[index + 2...num_array.length]
      break
    end
  end

  braced_results_str = results_arr.join("").reverse

  #check if there is still a number. recursion
  if braced_results_str.to_i != 0
    braced_results_str = decode_string(braced_results_str)
  end

  decoded = braced_results_str.delete("[]")
end

puts "abababab expected"
puts decode_string("4[ab]")
puts "baaabaaa expected"
puts decode_string("2[b3[a]]")
