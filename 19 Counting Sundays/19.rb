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

total_number_of_monday = 0
sunday = 0
day_offset = 0

1900.upto(2000) do |num|
  jan_days_sunday = 31 - day_offset
  sunday += jan_days_sunday / 7
  days_in_year(num)
  day_offset += days_in_year(num) % 7
  day_offset = day_offset > 6 ? day_offset : day_offset - 7
end

p sunday
