var current = 2;
var prev = 1;

var even_fibs = [current];

while(current < 4000000) {
  next = current + prev;
  
  if (next % 2 === 0){even_fibs.push(next);}
  prev = current;
  current = next;
}

sum = even_fibs.reduce(function(a,b){return a+b;});

console.log(sum);
