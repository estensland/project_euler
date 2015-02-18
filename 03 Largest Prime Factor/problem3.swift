var number = 600851475143

var divisor = 2

while (number > 1){
  if number % divisor == 0 {
    number /= divisor
  }
  else{
    divisor += 1
  }
}

println(divisor)
