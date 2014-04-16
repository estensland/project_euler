# 600851475143

def find_biggest_prime_factor(number)
  prime_factor = 2

  until number == 1 
    
    if number % prime_factor == 0
      number /= prime_factor
    else
      prime_factor += 1
    end
  
  end
  prime_factor
end

p find_biggest_prime_factor(600851475143)