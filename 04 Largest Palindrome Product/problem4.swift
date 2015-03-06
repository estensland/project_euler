func pallindrome_check(num: Int) -> Bool{
  var input = num
  var reversed = 0

  while input > 0 {
    reversed *= 10
    reversed += input % 10
    input /= 10
  }
  return (reversed == num)
}

var largest = 0

for x in 100...999 {
  for y in x...999 {
    var product = x * y
    if ((product > largest) && pallindrome_check(product)) {
      largest = product
    }
  }
}

println(largest)
