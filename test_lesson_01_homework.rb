# Code Reading



def full_name(first_name, last_name, title)
  # Example comment line
  # defining a function with arguments first_name, last_name, title

  @name = nil
    #declares uninitialized variable "name", assigned to nil 

  if title && first_name && last_name
    #if function is called with title, first_name, and last_name parameters, then print the following: 
    @name = title + " " + first_name + " " + last_name
      # name variable concatenates title, first_name, and last_name to appear on one line (i.e., Ms. Meghan Ventura)
  elsif title && last_name
      # if fullname() is given less than 3 arguments, it gives an ArgumentError. So I don't think this code will ever run.
    @name = title + " " + last_name
      # concatenates arguments title and last_name (i.e., "Ms. Ventura")
  elsif first_name && last_name
      # if fullname() is given less than 3 arguments, it gives an ArgumentError. So I don't think this code will ever run.
    @name = first_name + " " + last_name
      # concatenates arguments fist_name and last_name (i.e., "Meghan Ventura")
  elsif first_name
      # if fullname() is given less than 3 arguments, it gives an ArgumentError. So I don't think this code will ever run.
    @name = first_name
      # assigns first_name to variable name
  else
      #if none of the other statements above are executed, this will run.
    raise "Oh no, that doesn't look like a name"
      #prints an error message
  end

  return @name
      # returns name / the arguments that were passed to it.
end

full_name(2, 4, nil)
puts @name
