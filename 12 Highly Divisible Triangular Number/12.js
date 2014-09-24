var base = 1;
var i = 1;

while(i < 100) {
  base += i
  i += 1;
  var holding = []
  var divisor = base % 2 == 0 ? base / 2 : Math.round(base/3)
  while(divisor > 0) {
    if (base % divisor == 0) {holding.push(divisor)}
    divisor -= 1 ;
  }
  console.log(holding);
}

console.log(base);
console.log(i);
