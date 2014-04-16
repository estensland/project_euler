var isDivAllToTwenty = function(number){
  if (number === 0) {
    return false;
  }
  if (number % 2 !== 0) {
      return false;
  }
  if (number % 3 !== 0) {
      return false;
  }
  if (number % 4 !== 0) {
      return false;
  }
  if (number % 5 !== 0) {
      return false;
  }
  if (number % 6 !== 0) {
      return false;
  }
  if (number % 7 !== 0) {
      return false;
  }
  if (number % 8 !== 0) {
      return false;
  }
  if (number % 9 !== 0) {
      return false;
  }
  if (number % 11 !== 0) {
      return false;
  }
  if (number % 13 !== 0) {
      return false;
  }
  if (number % 14 !== 0) {
      return false;
  }
  if (number % 15 !== 0) {
      return false;
  }
  if (number % 16 !== 0) {
      return false;
  }
  if (number % 17 !== 0) {
      return false;
  }
  if (number % 18 !== 0) {
      return false;
  }
  if (number % 19 !== 0) {
      return false;
  }
  console.log(number % 19)
  return true;
};

var firstDivByAll = function() {
  found = false;
  i = 0;
  while (found === false && i <= 232792580) {
    if (isDivAllToTwenty(i)) {
      found = true;
      console.log("wooo")
      console.log(i)
      return i
    }
    i = i + 20;
  }
  return i
};



console.log(firstDivByAll());