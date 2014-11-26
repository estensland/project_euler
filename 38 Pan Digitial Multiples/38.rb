def number_split(num)
  num.to_s.split(//).map(&:to_i)
end

def pandigital?(num)
  split = number_split(num)
  split_uniq = split.uniq.reject(&:zero?)
  return false if split_uniq.length != split.length
  split_uniq.inject(:+) == 45
end

p pandigital?(198273645)
