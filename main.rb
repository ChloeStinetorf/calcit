### Simon ###

def advanced_calc()
  print "\nWhich option would you like? square(s) or power(p)? Please type in one (s or p)"
  ans = gets.chomp.downcase
  if ans == "s"
    print "What number would you like the square of? "
    third = gets.chomp.to_i
    puts square(third)
  elsif ans == "p"
    print "What is the first number?"
    first = gets.chomp.to_i
    puts "Ok, you entered #{first }, now what is your second number? "
    second = gets.chomp.to_i
    puts "alright so you entered #{first } and #{second } "
    puts power(first, second)
  else
    print "\n\n\n Error In Advanced Input\n\n\n"
  end
end

def square(x)
  x*x
end

def power(a, b)
  a**b
end

def basiccalc()
  print "What would you like to do? \n"
  print "add (+) , subtract (-) , multiply (*) , divide (/) \n"
  answer = gets.chomp
  filterbasic(answer)

end

def filterbasic(answer)
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
  print "*** \n\nThe Answer:     #{first_number + second_number}\n\n***\n"
end

def subtract()
  print "What is the first number?  --> "
  first_number = gets.chomp.to_i
  print "What is the second number? --> "
  second_number = gets.chomp.to_i
print "*** \n\nThe Answer:     #{first_number - second_number}\n\n***\n"
end

def multiply()
  print "What is the first number?  --> "
  first_number = gets.chomp.to_i
  print "What is the second number? --> "
  second_number = gets.chomp.to_i
  print "*** \n\nThe Answer:     #{first_number * second_number}\n\n***\n"
end

def divide()
  print "What is the first number?  --> "
  first_number = gets.chomp.to_i
  print "What is the second number? --> "
  second_number = gets.chomp.to_i
  print "*** \n\nThe Answer:     #{first_number / second_number}\n\n***\n"
end
### Nick ###
def filterselection(input)
  exit = false
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
    print "\n***\n You have not entered a valid choice. \n***\n"
  end
exit
end

def options()
  print "\n What type of calculator would you like to use?\n"
  print "(1 or B  => Basic Calculator)\n"
  print "(2 or A  => Advanced Calculator)\n"
  print "(3 or E  => Exit)\n\n"
end


########     Welcome Code ###############
print "\n\n\nWelcome to the most amazing calculator\n"
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



