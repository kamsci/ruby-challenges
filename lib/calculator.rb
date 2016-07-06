# Create a simple calculator that first asks the user what method they would like to use
# (addition, subtraction, multiplication, division) and then asks the user for two numbers,
# returning the result of the method with the two numbers. Here is a sample prompt:

# What calculation would you like to do? (add, sub, mult, div)
# add
# What is number 1?
# 3
# What is number 2?
# 6
# Your result is 9

puts "What calculation would you like to do? (add, sub, mult, div)"
method = gets.chomp

puts "What is the first number?"
input1 = gets.chomp.to_i

puts "What is the second number?"
input2 = gets.chomp.to_i

def calculate (calculation, num1, num2)
  answer = 0
  if calculation == 'add'
    answer = num1 + num2
  elsif calculation == 'sub'
    answer = num1 - num2
  elsif calculation == 'mult'
    answer = num1 * num2
  elsif calculation == 'div'
    answer = num1 / num2
  else
    puts "Not a valid request"
    return
  end
  puts "Your result is #{answer}"
end

calculate(method, input1, input2)
