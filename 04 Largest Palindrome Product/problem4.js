var pallindromeCheck = function(num){
  var string = num.toString();
  return string === string.split('').reverse().join('');
}

var largestPallindromeFinder = function(low, high){
  var largest = 0;
  pallindromes = [];
  for(var i = low; i < high; i ++){
    for(var y = i; y < high; y ++){
      var prod = i * y;
      if ((prod > largest) && (pallindromeCheck(prod))){
        largest = prod;
      }
    }
  }
  return largest;
}

console.log(largestPallindromeFinder(100, 999));
