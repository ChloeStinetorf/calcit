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



