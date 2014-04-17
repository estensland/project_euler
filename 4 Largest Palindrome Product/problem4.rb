pallindromes = []

def pallindrome_finder(low, high)
  pallindromes = []
  x = low

  until x > high    
    y = low
  
    until y > high
      z = x * y
      z = z.to_s
      if z == z.reverse
        pallindromes << z.to_i  
      end
      y += 1
    end
    x+=1
  end
  pallindromes
end

def largest_pallindrome(low, high)
  pallindrome_finder(low, high).last
end

p largest_pallindrome(100, 999)