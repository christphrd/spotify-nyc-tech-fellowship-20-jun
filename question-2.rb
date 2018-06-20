require 'pry'

def decode_string(s)
  results_arr = []

  arr = s.chars
  datatype_arr = arr.map do |char|
    if char.to_i != 0
      char.to_i
    else
      char
    end
  end.reverse

  datatype_arr.each_with_index do |element, index|
    if element == "["
      multiplied = datatype_arr[0..index] * datatype_arr[index + 1]
      results_arr = multiplied
    end
  end

  # binding.pry

  braced_results_str = results_arr.join("").reverse
  decoded = braced_results_str.delete("[]")
end

puts "abababab expected"
puts decode_string("4[ab]")
# puts "baaabaaa expected"
# puts decode_string("2[b3[a]]")

#for loop equivalent
# array.each_with_index do |element,index|
#   element.do_stuff(index)
# end
