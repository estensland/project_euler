
def pentanumber(num)
  num = num.to_f
  top = num * ((3 * num) - 1)
  top.to_f / 2.0
end

def is_pentagon_number?(num)
  top = 24 * num + 1
  top = Math.sqrt(top) + 1
  (top / 6) % 1 == 0
end

p_nums = []

i = 1
max = 5000
while i < max
  pn = pentanumber(i)
  p_nums.each do |n|
    if is_pentagon_number?(pn + n) && is_pentagon_number?((pn - n).abs)
      puts (pn - n).abs
      i = max
      break
    end
  end

  p_nums << pn
  i += 1
end