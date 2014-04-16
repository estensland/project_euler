var isDivTo = function(number, breakPoint){
  divisor = breakPoint
  while(divisor > breakPoint/2){
    if (number % divisor !== 0) {
      return false;
    } 
    divisor --;
  }
  return true;
};

var firstDivByAll = function(number) {
  found = false;
  i = 20;
  while (found === false) {
    if (isDivTo(i, number)) {
      found = true;
      return i;
    }
    i = i + 20;
  }
};

console.log(firstDivByAll(20));