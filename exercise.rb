class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # TODO: Implement this method
    marklarString = ""
    array_of_words = str.split(" ")
    array_of_words.map do |word|
      punctuation = ''
      if word[-1] =~ /\W/
        punctuation = word[-1]
      end
      if word.length > 4
        if word == word.capitalize()
          marklarString += "Marklar"
        else
          marklarString += "marklar"
        end
        if punctuation != ""
          marklarString += punctuation
        end
      else
        marklarString += word
      end
      marklarString += " "
    end
    return marklarString.chop
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # TODO: Implement this method
    a = 0
    b = 1
    sum = 0
    i = 0
    while i < nth do
      if b%2 == 0
        sum += b
      end
      a,b = b,a+b
      i+= 1
    end 
    return sum
  end

end
