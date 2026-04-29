require 'pry' 

def factorial(num)
  if num < 0
    return nil
  end
  # write a recursive method for calculating the [factorial](https://simple.wikipedia.org/wiki/Factorial) of a number
  if num <= 1 
    return 1
  else
    return num * factorial(num-1)
  end
end

factorial(5)