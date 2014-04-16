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
  sum_of_multiples(multiples)
end

def sum_of_multiples(numbers)
  numbers.flatten.uniq.inject(:+)
end

p get_multiples_for(1000, 3, 5)