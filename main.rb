print "Which option would you like? Square or power? Please type in one"
square = gets.chomp.downcase
power = gets.chomp.downcase
if power
print "What is the first number?"
first = gets.chomp
puts "Ok, you entered #{first }, now what is your second number? "
second = gets.chomp
puts "alright so you entered #{first } and #{second } "
puts power(first, second)
end
print "What number would you like the square of? "
third = gets.chomp
puts square(third)






def square(x)
  x*x
end

def power(a, b)
  a**b
end
