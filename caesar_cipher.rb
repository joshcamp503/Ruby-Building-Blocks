# Receives a string and changes every letter by shifting it within the context of the alphabet by a given number of letters.



def cipher
# get user input
  puts "Tell me a secret and I will encrypt it."
  text = gets.chomp

  puts "On a scale of 1 to 10, just how big of a secret is this?"
  shift = gets.chomp.to_i
# make sure user input works with our function
  if ((1..10) === shift)
  	puts "OK, one second please..."
  else
  	puts "That's not from 1 to 10..."
  	shift = gets.chomp.to_i
  end
# turn user input into array
  chars = text.split("")
# manipulate array appropriately, look out for edge cases
  new_chars = chars.collect do |item|
    if (('A'..'z') === item)
      item = (item.ord + shift).chr 
      if (('A'..'z') === item)
        item
      else
        item = (item.ord - (shift*2)).chr
      end
    else
      item
    end
  end
# join array to output a string to the user
  puts new_chars.join("")
  
end

cipher