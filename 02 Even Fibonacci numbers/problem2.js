evenFibs = function(limit) {
  var current = 2;
  var prev = 1;

  var evenFibs = [current];

  while(current < limit) {
    next = current + prev;

    if (next % 2 === 0){evenFibs.push(next);}
    prev = current;
    current = next;
  }

  return evenFibs.reduce(function(a,b){return a+b;});
}

console.log(evenFibs(4000000));