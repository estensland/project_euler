// So far the scientific notation is preventing unique values

function contains(a, obj) {
  for (var i = 0; i < a.length; i++) {
    if (a[i] === obj) {
      return true;
    }
  }
  return false;
}

var low = 2;
var high = 100;

var arr = [];


for (var a = low, aa= high; a <= aa; a++){
  for (var b = low, bb= high; b <= bb; b++){
    var key = Math.pow(a, b).toPrecision([21]);
    if(!contains(arr, key)){arr.push(key);}
  }
}

console.log(arr);
console.log(arr.length);