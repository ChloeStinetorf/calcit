
def advanced_calc()
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
end


def square(x)
  x*x
end

def power(a, b)
  a**b
end


def add(first_number, second_number)
  print "What is the first number?"
  first_number = gets.chomp
  print "What is the second number?"
  second_number = gets.chomp
  first_number + second_number
end

def subtract(first_number, second_number)
  print "What is the first number?"
  first_number = gets.chomp
  print "What is the second number?"
  second_number = gets.chomp
  first_number - second_number
end

def multiply(first_number, second_number)
  print "What is the first number?"
  first_number = gets.chomp
  print "What is the second number?"
  second_number = gets.chomp
  first_number * second_number
end

def divide(first_number, second_number)
  print "What is the dividend?"
  first_number = gets.chomp
  print "What is the divisor?"
  second_number = gets.chomp
  first_number / second_number
end

def filterselection(input)
  exit = false
  if (input == "1" || input.downcase == "b")
    #Call function for BASIC
    print "1/b"
  elsif (input == '2' || input.downcase == "a")
    #Call function for Advanced
    print "2/a"
  elsif(input == "3" || input.downcase == "e")
    #exit
    exit = true
  else
    print "\n***\n You have not entered a valid choice. \n***\n"
  end
exit
end


print "\n\n\nWelcome to the most amazing calculator. \n"
print "\n*****************************************\n"
print "\n What type of calculator would you like to use?\n"
print "(1 or B  => Basic Calculator)\n"
print "(2 or A  => Advanced Calculator)\n"
print "(3 or E  => Exit)\n\n"

print "Selection: "
selection = gets.chomp

print filterselection(selection)


print "\n\n\n\n"



