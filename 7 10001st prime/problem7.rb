def prime?(number)
  2.upto(number/2) do |i|
    return false if number%i == 0
  end 
  p number
  true
end

primes = []
x = 2
until primes.length == 10_001
  primes << x if prime?(x)
  x += 1
end