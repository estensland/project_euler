sumSquareDifferenceUpTo = function(limit) {
  var regular_sum = 0;
  var squared_sum = 0;
  x = 1;
  while (x <= limit) {
    regular_sum = regular_sum + x;
    squared_sum = squared_sum + Math.pow(x,2);
    x ++;
  }
  return Math.pow(regular_sum,2) - squared_sum;
};

console.log(sumSquareDifferenceUpTo(100));



