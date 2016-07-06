# Create a prompt that asks the user if they would like to display their balance, withdraw or deposit.
# Write three methods to perform these calculations and output the result to the user. Here is a sample output:

# Your current balance is
# 4000
# What would you like to do? (deposit, withdraw, check_balance)
# deposit
# How much would you like to deposit?
# 1000
# Your current balance is 5000
# Are you done?
# yes
# Thank you!

balance = 4000

puts "Your current balance is #{balance}"

active = true

while active
  puts "Choose one: check_balance, withdraw, deposit"
  action = gets.chomp

  if action == "check_balance"
    puts "Your current balance is #{balance}"
  elsif action == "withdraw"
    puts "How much would you like to withdraw?"
    amount = gets.chomp.to_i
    puts "Your current balance is #{balance - amount}"
  elsif action == "deposit"
    puts "How much would you like to deposit?"
    amount = gets.chomp.to_i
    puts "Your current balance is #{balance + amount}"
  else
    puts "Not a valid request"
  end
  puts "Are you done? (Y/N)"
  status = gets.chomp

  if status == "Y"
    active = false
  end

end
