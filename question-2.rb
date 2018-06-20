require 'pry'

def decode_string(s)
  results_arr = []

  arr = s.chars
  array = arr.map do |char|
    if char.to_i != 0
      char.to_i
    else
      char
    end
  end.reverse


  array.each_with_index do |element, index|
    if element == "["
      multiplied = array[0..index] * array[index + 1]
      results_arr = multiplied + array[index + 2...array.length]
      break
    end
  end

  # binding.pry

  braced_results_str = results_arr.join("").reverse
  decoded = braced_results_str.delete("[]")

end

puts "abababab expected"
puts decode_string("4[ab]")
puts "baaabaaa expected"
puts decode_string("2[b3[a]]")

#for loop equivalent
# array.each_with_index do |element,index|
#   element.do_stuff(index)
# end
