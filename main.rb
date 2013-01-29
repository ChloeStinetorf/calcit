require  'rainbow'
### Simon ###

def mortgage_calc()
  print "\n\n"
  print "What is the principal amount? "
  p = gets.chomp.to_i
  print "What is the interest rate? "
  r = gets.chomp.to_i/100
  print "How many years left on your mortgage? "
  n = gets.chomp.to_i
  c = p((r*(1 + r)**n)/(((1 + r)**n)-1))
end

def advanced_calc()
  print "\nWhich option would you like? square(s) or power(p)? Please type in one (s or p)  \n".foreground(:blue)
  ans = gets.chomp.downcase
  if ans == "s"
    print "What number would you like the square of? "
    third = gets.chomp.to_i
    print "\n***\nThe answer is: \n\n " + square(third).to_s.foreground(:yellow)
    print "\n***\n"
  elsif ans == "p"
    print "What is the first number?  "
    first = gets.chomp.to_i
    print "Ok, you entered #{first }, now what is your second number?   "
    second = gets.chomp.to_i
    puts "alright so you entered #{first } and #{second } \n "
    print "\n***\nThe answer is:   \n\n" + power(first, second).to_s.foreground(:yellow)
    print "\n***\n"
  else
    print "\n\n\n Error In Advanced Input\n\n\n".foreground(:red)
  end
end

def square(x)
  x ** x
end

def power(a, b)
  a**b
end

def basiccalc()
  print "What would you like to do? \n"
  print "add (+) , subtract (-) , multiply (*) , divide (/) \n".foreground(:blue)
  answer = gets.chomp
  filterbasic(answer)

end

def filterbasic(answer)
  print "\n"

  if answer == "+" || answer == "a" || answer == "add"
    add()
  elsif answer =="-" || answer == "s" || answer == "subtract"
    subtract()
  elsif answer == "*" || answer == "m" || answer == "multiply"
    multiply
  elsif answer == "/" || answer == "d" || answer == "divide"
    divide()
  else
    print "error"
  end

end


def add()
  print "What is the first number?  --> "
  first_number = gets.chomp.to_i
  print "What is the second number? --> "
  second_number = gets.chomp.to_i
  print "*** \n\nThe Answer:     #{first_number + second_number}\n\n***\n".foreground(:yellow)
end

def subtract()
  print "What is the first number?  --> "
  first_number = gets.chomp.to_i
  print "What is the second number? --> "
  second_number = gets.chomp.to_i
print "*** \n\nThe Answer:     #{first_number - second_number}\n\n***\n".foreground(:yellow)
end

def multiply()
  print "What is the first number?  --> "
  first_number = gets.chomp.to_i
  print "What is the second number? --> "
  second_number = gets.chomp.to_i
  print "*** \n\nThe Answer:     #{first_number * second_number}\n\n***\n".foreground(:yellow)
end

def divide()

  print "What is the first number?  --> "
  first_number = gets.chomp.to_i
  print "What is the second number? --> "
  second_number = gets.chomp.to_i
  print "*** \n\nThe Answer:     #{first_number / second_number}\n\n***\n".foreground(:yellow)
end
### Nick ###
def filterselection(input)
  exit = false
  puts `clear`
  if (input == "1" || input.downcase == "b")
    #Call function for BASIC
    basiccalc()
  elsif (input == '2' || input.downcase == "a")
    #Call function for Advanced
    advanced_calc()
  elsif(input == "3" || input.downcase == "e")

    #exit
    exit = true
    print "\n\n ****************\n \n GOOD BYE \n\n ****************"
  else
    print "\n***\n You have not entered a valid choice. \n***\n".foreground(:red )
  end
exit
end

def options()
  print "\n What type of calculator would you like to use?\n"
  print "(1 or B  => Basic Calculator)\n".foreground(:blue)
  print "(2 or A  => Advanced Calculator)\n".foreground(:blue)
  print "(3 or E  => Exit)\n\n".foreground(:blue)
end


########     Welcome Code ###############
puts `clear`
print "Welcome to the most amazing calculator\n"
print "\n*****************************************\n"
options()
########  Initial Selection
print "Selection: "
selection = gets.chomp

#Set to Loop
exit = false

#### Loop until Exit!  (this is where you could to until(exit)!!!  )
while(!exit)
  exit = filterselection(selection)
  if (!exit)
    options()
    selection = gets.chomp
  end
end



print "\n\n\n\n"



