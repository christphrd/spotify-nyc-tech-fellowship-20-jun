require 'pry'

def decode_string(s)
  #find innermost bracket
  #repeat what's in bracket by num ("ab" * num)
  #keep going until no more brackets
  while s.include? "["
    arr = s.split("[")
    #["4", "ab]"]
    num = arr.shift.to_i
    #4, arr = ["ab]"]
    new_str = arr.join("[")
    #"ab]"
    new_str_no_brack = new_str[0...-1]
    #"ab"
    s = new_str_no_brack * num
  end
  s
end

puts "abababab expected"
puts decode_string("4[ab]")
# puts "baaabaaa expected"
# puts decode_string("2[b3[a]]")
