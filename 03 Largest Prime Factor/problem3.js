var number = 600851475143;

var prime_factor = 2;

while (number > 1){
  if (number % prime_factor == 0){
    number /= prime_factor;
  }
  else{
    prime_factor ++;
  }
}

console.log(prime_factor);
