var store = [];
var i = 1;

while (i < 1000) {
  if ((i % 3 === 0) || (i % 5 === 0)){
    store.push(i);
  }
  i++;
}

var sum = store.reduce(function(a,b){
  return a+b;
})

console.log(sum);