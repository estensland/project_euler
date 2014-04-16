# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 nd 9.
# The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

def find_multiples(num, top)
  results = []

  top.times do |number|
    results << number if number % num == 0
  end

  results
end 

def get_multiples_for(top, *numbers)
  multiples = []

  numbers.each do |number|
    multiples << find_multiples(number, top)
  end
  sum_of_multiples(multiples.flatten.uniq)
end

def sum_of_multiples(numbers)
  numbers.inject(:+)
end

p get_multiples_for(1000, 3, 5)