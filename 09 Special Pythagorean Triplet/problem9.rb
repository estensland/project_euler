b = 1

until b == 1000
  a = 1
  until a == b do

    c = (a**2 + b**2) ** 0.5
    if a + b + c  == 1000
      puts [a,b,c]
      puts a * b * c
      break
    end
    a += 1
  end
  b += 1
end