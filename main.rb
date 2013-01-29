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
    print "\n1/b\n"
  elsif (input == '2' || input.downcase == "a")
    #Call function for Advanced
    print "\n2/a\n"
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



