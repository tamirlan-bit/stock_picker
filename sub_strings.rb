

def substrings(str,dictionary)
  puts str
  str = str.downcase
  hash = Hash.new(0)
  
  dictionary.each do |word|
    matches = str.scan(word)
    hash[word] = matches.length if matches.any?
  end
  p hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)


################# usually all this be deleted, but I thought to save it so you the reader know its not that easy for begginers

# I tried bunch of stuff until its finnaly worked, would help if I new about scan sooner
# 
#  > substrings("below", dictionary)
#   => { "below" => 1, "low" => 1 }

#  > substrings("Howdy partner, sit down! How's it going?", dictionary)
#   => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, 
#   "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }

  
  
# #work for strings not for substrings, its will find low twice if its in the dic, but now how in howdy
# def substrings(str,dictionary)
#   puts str
#   str = str.downcase
#   p str
#   p dictionary
#   hash = Hash.new(0)
#   i=0
#   while i < dictionary.length   
#     puts "i: #{i}"
#     puts "dictionary[i]: #{dictionary[i]}"
#     if hash.key?(dictionary[i])
#       puts "key was found, increase its value} "    
#       hash[dictionary[i]] += 1  
#       p hash  
#     else
#       if str.include?(dictionary[i])
#         puts "str include #{dictionary[i]} "
#         hash[dictionary[i]] += 1
#         p hash
#       end
#     end
#     i+=1
#   end
#   puts "main loop finished, here's the results:"
#   p hash
# end
 

# final solution before clean up
# def substrings(str,dictionary)
  # puts str
#   str = str.downcase
#   # p str
#   # p dictionary
#   hash = Hash.new(0)
#   i=0
  
#   while i < dictionary.length   
#     # puts "i: #{i}"
#     # puts "dictionary[i]: #{dictionary[i]}"    
#     count = str.scan(dictionary[i])
#     # puts "count is : #{count}"
#     if count.length > 0        
#       # puts str.index(dictionary[i])
#       # puts "str index #{dictionary[i]} "
#       hash[dictionary[i]] = count.length
#       #p hash
#     end
#     i+=1
#   end
#   puts "main loop finished, here's the results:"
#   p hash
# end

##almost final and clean, but its still ugly, so rewritten it again
# def substrings(str,dictionary)
#   puts str
#   hash = Hash.new(0)
#   i=0 
#   while i < dictionary.length    
#     if str.downcase.scan(dictionary[i]).length > 0    
#       hash[dictionary[i]] = str.downcase.scan(dictionary[i]).length
#     end
#     i+=1
#   end
#   p hash
# end