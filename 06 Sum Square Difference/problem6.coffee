x = 1
regular_sum = 0;
squared_sum = 0;

while x <= 100
  regular_sum = regular_sum + x;
  squared_sum = squared_sum + Math.pow(x,2);
  x += 1;

console.log(Math.pow(regular_sum,2) - squared_sum;)