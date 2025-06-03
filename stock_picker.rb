def stock_picker(arr)
max = 0
i_max = 0
j_max = 0

puts "Our Array is #{arr}"
(0...arr.length - 1).each do |i|
  (i + 1...arr.length).each do |j|
    profit = arr[j] - arr[i]
    #puts "temp = arr[j](#{arr[j]}) - arr[i](#{arr[i]}) = #{temp}"
    if profit > max
      max = profit
      i_max = i
      j_max = j
    end
  end
end
puts "[#{i_max},#{j_max}] # for maximum profit of $#{arr[j_max]} - $#{arr[i_max]} == $#{max}"

end

stock_picker([17,3,6,9,15,8,6,1,10])

#   > stock_picker([17,3,6,9,15,8,6,1,10])
#   => [1,4]  # for a profit of $15 - $3 == $12
