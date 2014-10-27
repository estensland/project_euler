def factorial(num)
  (1..num).to_a.inject(&:*)
end

p factorial(100).to_s.split('').map(&:to_i).inject(&:+)