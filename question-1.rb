def sort_by_strings(s,t)
  ascii = "@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\"

  #s.chars returns an array of each char
  #sort_by iterates through each char and returns an array
  sorted = s.chars.sort_by do |char|
    #char is assigned an ascii letter based on t (for sorting)
    char.tr(t, ascii)
    #join the sorted array for a new string
  end.join
  #return the string
  sorted
end

puts sort_by_strings("weather", "therapyw")
puts sort_by_strings("good", "odg")
