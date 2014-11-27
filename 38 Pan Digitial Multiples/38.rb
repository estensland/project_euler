def number_split(num)
  num.to_s.split(//).map(&:to_i)
end

def pandigital?(split)
  split_uniq = split.uniq.reject(&:zero?)
  return false if split_uniq.length != split.length
  split_uniq.inject(:+) == 45
end

res = []

1.upto(1000) do |i|
  split_num = number_split(i)

  next if split_num.uniq.length != split_num.length

  n = 2
  holder = split_num

  until n >= i || holder.length >= 9
    holder += number_split(n * i)
    n = i if pandigital?(holder)
    n += 1
  end

  res << holder.join.to_i if pandigital?(holder)
end

p res.sort.reverse
