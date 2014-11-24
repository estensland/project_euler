def pallindrome_finder(low, high)
  pallindromes = []
  low.upto(high).map do |x|
    pallindromes << x if pallindrome?(x) && pallindrome?(x, 2)
  end
  pallindromes.sort
end

def pallindrome?(num, base = nil)
  num = if base
    num.to_s
  else
    num.to_s(2)
  end
  num == num.reverse
end

p pallindrome_finder(1, 1000000).inject(:+)