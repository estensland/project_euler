def days_in_year(num)
  if num % 4 == 0
    if num % 100 == 0 && !(num % 400 == 0)
      365
    else
      366
    end
  else
    365
  end
end

total_number_of_days = 0

1900.upto(2000) do |num|
  total_number_of_days += days_in_year(num)
end

p total_number_of_days