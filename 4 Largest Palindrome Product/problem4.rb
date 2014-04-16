pallindromes = []

def pallindrome_finder(low, high)
  pallindromes = []
  x = low

  until x > high    
    y = low
  
    until y > high
      z = x * y
      z = z.to_s
      if z[0] == z[-1] && z[1] == z[-2]
        if z.length < 5
          pallindromes << z.to_i  
        else
          pallindromes << z.to_i if z[2] == z[-3]
        end
      end
      y += 1
    end
    x+=1
  end

  pallindromes
end

def largest_pallindrome(low, high)
  pallindrome_finder(low, high).length
end

p largest_pallindrome(100, 999)