@array = (0..1000).map(&:to_s).join

def num_thing(num)
  { 10 => 10,
    100 => 192, #190 to 192 (180)
    1000 => 2893, #2890 to 2893 (2700)
    10000 => 38895, #38890 to 38895 (38600)
    10000 => ,
  }
end

def numeral_count(count)
  if count < 10
    return count
  elsif count < 100
    count -= 9
    res = 9 + count / 2
    if count % 2 > 0
      res / 10
    elsif
      result =  res % 10
      result
    end
  elsif count < 1000
    count -= 9
    res = 9 + count / 2
    if count % 2 > 0
      res / 10
    elsif
      result =  res % 10
      result
    end
  end
end

p numeral_count(10)
p @array[10]