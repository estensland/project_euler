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

sundays = 0
year_day_offset = 2

1901.upto(2000) do |num|
  day_off = year_day_offset
  local = 0
  checks = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30]
  checks[2] = 29 if days_in_year(num) == 366
  checks.each do |days_in_month|
    day_off += days_in_month % 7
    day_off = day_off < 7 ? day_off : day_off - 7
    local += 1 if day_off == 0
  end
  p [num, local]
  sundays += local
  year_day_offset += days_in_year(num) % 7
  year_day_offset = year_day_offset < 7 ? year_day_offset : year_day_offset - 7
end

p sundays