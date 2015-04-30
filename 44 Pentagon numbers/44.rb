
def pentanumber(num)
  num = num.to_f
  top = num * ((3 * num) - 1)
  top.to_f / 2.0
end

def is_pentagon_number?(num)
  Math.sqrt((24 * num) + 1) % 1 == 0
end
