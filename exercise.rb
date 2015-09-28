class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # TODO: Implement this method
    array = str.split
    array_length = str.split.length

    for i in 0...array_length
      if array[i].length > 4
        last = array[i].length-1
        #check if the end of each string (greater than 4) has a punctuation
        if /[[:punct:]]/.match(array[i][last])
          punct = array[i][last]
        else
          punct = ''
        end
        #check if each string (greater than 4) has a capitalized first letter
        if array[i] == array[i].capitalize
          array[i] = "Marklar" + punct
        else
          array[i] = "marklar" + punct
        end

      end
    end

    return array.join(" ")
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # TODO: Implement this method
    even_sum = 0

    for i in 1..nth
      #check if each sequence is even
      if fibonacci(i).even?
        even_sum += fibonacci(i)
      end
    end
    return even_sum

  end
end

def fibonacci(n)
  if n < 2
    return n
  end
  return fibonacci(n-1) + fibonacci(n-2)
end



