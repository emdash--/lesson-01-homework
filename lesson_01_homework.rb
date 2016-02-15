# Code Reading

def full_name(first_name, last_name, title)
  # Example comment line
  # defining a function with arguments first_name, last_name, title

  name = nil
    #declares uninitialized variable "name", assigned to nil 

  if title && first_name && last_name
    #if function is called with title, first_name, and last_name parameters, then print the following: 
    name = title + " " + first_name + " " + last_name
      # name variable concatenates title, first_name, and last_name to appear on one line (i.e., Ms. Meghan Ventura)
  elsif title && last_name
      # if fullname() is given less than 3 arguments, it gives an ArgumentError. So I don't think this code will ever run.
    name = title + " " + last_name
      # concatenates arguments title and last_name (i.e., "Ms. Ventura")
  elsif first_name && last_name
      # if fullname() is given less than 3 arguments, it gives an ArgumentError. So I don't think this code will ever run.
    name = first_name + " " + last_name
      # concatenates arguments fist_name and last_name (i.e., "Meghan Ventura")
  elsif first_name
      # if fullname() is given less than 3 arguments, it gives an ArgumentError. So I don't think this code will ever run.
    name = first_name
      # assigns first_name to variable name
  else
      #if none of the other statements above are executed, this will run.
    raise "Oh no, that doesn't look like a name"
      #prints an error message
  end

  return name
      # returns name / the arguments that were passed to it.
end

# Fix Broken Code

def full_name(f, l)
  puts f + l
end

puts full_name("bubba", "chuck")
  #typo in "full_nam"

# Coding


## Enter your code for your 'add' method below

def add(num1, num2)
  puts num1 + num2
end  

add(3, 4)

## Enter the code for you 'join_strings' method below

def join_strings (string1, string2)
  puts string1 + " " + string2
end

join_strings("what's", "up")

## Enter your 'old_enough_to_vote?' method below

def old_enough_to_vote?(age)
  if age >= 18
    puts "Go right ahead and vote!"
  else
    puts "Come back in " + (18 - age).to_s + " years."
  end
end

old_enough_to_vote?(16)
