var days_in_year = function(num){
  var result;
  if (num % 4 == 0){
    if (num % 100 == 0 && !(num % 400 == 0)){
      result = 365;
    }
    else{
      result = 366;
    }
  }
  else{
    result = 365;
  }
  return result;
}

var sundays = 0;
var year_day_offset = 2;


for (var i = 1901, ii = 2000; i <= ii; i++) {
  var day_off = year_day_offset;
  var local = 0;
  var checks = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30]
  if (days_in_year(i) == 366){
    checks[2] = 29;
  }

  for (var y = 0, yy = checks.length; y < yy; y++) {
    var days_in_month = checks[y];
    day_off = day_off + (days_in_month % 7);
    day_off = day_off < 7 ? day_off : day_off - 7;
    if (day_off == 0){
      local ++;
    }
  }
  sundays += local
  year_day_offset += (days_in_year(i) % 7)
  year_day_offset = year_day_offset < 7 ? year_day_offset : year_day_offset - 7
};

console.log(sundays)