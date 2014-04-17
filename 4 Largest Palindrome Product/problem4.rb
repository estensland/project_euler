def pallindrome_finder(low, high)
  pallindromes = []
  low.upto(high).map do |x|
    low.upto(high).each do |y|
      z = x * y
      pallindromes << z if pallindrome?(z)
    end
  end
  pallindromes
end

def pallindrome?(num)
  num = num.to_s
  num == num.reverse
end

def largest_pallindrome(low, high)
  pallindrome_finder(low, high).last
end

p largest_pallindrome(100, 999)