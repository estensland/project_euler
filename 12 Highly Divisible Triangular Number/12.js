var base = 0;
var i = 0;
var divisorCounter = 0;

while(divisorCounter < 500) {
  i += 1;
  base += i;
  divisorCounter = 0;
  var divisor = 1;
  while(divisor <= Math.sqrt(base)) {
    if (base % divisor == 0) {
      if (base/divisor !== divisor){
        divisorCounter += 2;
      }
      else{
        divisorCounter += 1;
      }
    }
    divisor += 1;
  }
}
console.log(base);