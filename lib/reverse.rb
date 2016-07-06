# Reverse a string in place. In other words, do not create a new string or use other methods on the string such as reverse.
# The goal of the problem is to use a loop and the string accessors to figure out which values to swap for other values.
# Below is some sample output.

# Enter a string:
# reverse_me
# em_esrever

puts "Enter a string"
string = gets.chomp

def reverse_string(string)
  length = string.length / 2

  for i in (0...length) do
    temp = string[i]
    temp2 = string[-(i + 1)]
    string[i] = temp2
    string[-(i + 1)] = temp
  end
  puts string
end

reverse_string string
