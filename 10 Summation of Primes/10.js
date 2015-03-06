var primeCheck = function(number) {
  var i = 2;
  while (i < (Math.sqrt(number) + 1)) {
    if (number % i === 0 && number !== 2) {return false;}
    i ++;
  }
  return true;
};

var count = 2;
var sum = 0;
while (count < 2000000){
  if (primeCheck(count)) {
    sum = sum + count;
  }
  count ++;
}

console.log(sum)
