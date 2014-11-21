def prime?(number)
  2.upto(number**0.5) do |i|
    return false if number%i == 0
  end
  true
end

def nth_prime(num)
  primes = []
  x = 2
  until primes.length == (num)
    primes << x if prime?(x)
    x += 1
  end
  primes
end

p nth_prime(10_001).last