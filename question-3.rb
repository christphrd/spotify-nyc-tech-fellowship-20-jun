def change_possibilities(amount,denominations)
  #sort array and remove duplicates
  count = 0
  desc_ordered = denominations.sort.uniq.reverse

  #just one denomination. no combos
  desc_ordered.each { |denomination| count += 1 if amount % denomination == 0 }

  #checking combos
  # desc_ordered.each_with_index do |denomination, index|
  #   leftover = amount - denomination
  # end

  count
end

puts "4 possibilities expected with 4 cents and 1,2,3cent coins"
puts change_possibilities(4, [1,2,3])
