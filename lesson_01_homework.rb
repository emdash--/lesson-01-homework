# Code Reading

def full_name(first_name, last_name, title)
  # Example comment line
  # defining a function with arguments first_name, last_name, title
  # Can pass nil or false

  name = nil
    #declares uninitialized variable "name", assigned to nil 

  if title && first_name && last_name
    #if function is called with title, first_name, and last_name parameters, then this will happen: 
    name = title + " " + first_name + " " + last_name
      # name variable concatenates title, first_name, and last_name to appear on one line (i.e., Ms. Meghan Ventura)
  elsif title && last_name
      # if nil or false is passed to first_name, this condition will trigger:
    name = title + " " + last_name
      # concatenates arguments title and last_name (i.e., "Ms. Ventura")
  elsif first_name && last_name
      # nil or false is passed to title, then this condition will trigger:
    name = first_name + " " + last_name
      # concatenates arguments fist_name and last_name (i.e., "Meghan Ventura")
  elsif first_name
      # if nil or false is passed to last_name and title, then this condition triggers:
    name = first_name
      # assigns first_name to variable name
  else
      #if none of the other statements above are executed (or nil or false are passed to all variables, this will run.
    raise "Oh no, that doesn't look like a name"
      #prints an error message
  end

  return name
      # returns name / the arguments that were passed to it.
end


# Fix Broken Code

def full_name(first_name, last_name)
  full_name = "#{first_name} #{last_name}"
  return full_name
end

puts full_name("bubba", "chuck")

# Coding


## Enter your code for your 'add' method below

=begin
HAMMER:
puts "I have #{add(1 + 2)} pets" you would get weird results. How could you change this to make the method more flexible?
=end
def add(num1, num2)
  sum = num1 + num2
  "The sum is #{sum}"
end  

puts add(3, 4)

## Enter the code for you 'join_strings' method below

def join_strings(string1, string2)
  joined_string = "#{string1} #{string2}"
  return joined_string
end

puts join_strings("what's", "up")

## Enter your 'old_enough_to_vote?' method below
## :hammer: @emdash-- this method should accept the actual birth year. Also, this method also has the same issue with a puts in the method body

def old_enough_to_vote?(year_born)
  current_year = Time.new.year
  age = (current_year - year_born)
  if age >= 18
    result = "Go right ahead and vote!"
  else
    result = "Come back in " + (18 - age).to_s + " years."
  end
  return result
end

puts old_enough_to_vote?(2000)
