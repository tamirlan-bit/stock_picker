
def caesar_cipher(msg,factor)
  #split word to array and convert to ASCII
  arr = msg.split("").map{ |s| s.ord }
  arr.map! do |n|
    #filter letters 
    if n.between?(65, 90) || n.between?(97,122)  
      new_n = n + factor
      #rotate the tail end like so that zZ becomes aA and so on
      if n.between?(65, 90) && new_n > 90
        new_n -= 26
      elsif n.between?(97,122) && new_n > 122
        new_n -= 26
      end
      #update each char with new number
      n = new_n
    end
    #ignore the not chars but don't omit them
    n 
  end
  arr.map { |s| s.chr}.join
end

puts "Your important message, and secret number?"
puts caesar_cipher(gets.chomp, gets.to_i)
