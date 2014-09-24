var base = 1;
var i = 1;
var divisorCounter = 0

while(divisorCounter < 501) {
  base += i
  i += 1;
  var divisor = 1
  divisorCounter = 0
  while(divisor <= Math.sqrt(base)) {
    if (base % divisor == 0) {
      if (base/divisor !== divisor){
        divisorCounter += 2
      }
      else{
        divisorCounter += 1
      }
    }
    divisor += 1 ;
  }
}

console.log(base);
