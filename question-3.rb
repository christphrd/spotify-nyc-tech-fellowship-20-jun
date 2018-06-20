def change_possibilities(amount,denominations)
  #sort array and remove duplicates
  ordered = denominations.sort.uniq

end

puts "4 expected"
puts change_possibilities(4, [1,2,3])
