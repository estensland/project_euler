func test(max: Int) -> Int{
  var current = 2
  var prev = 1
  var sum = 2
  
  while current < max {
    var next = current + prev
    
    if next%2==0 {
        sum += next
    }
    prev = current
    current = next
  }
  return sum
}
  println(test(4000000))
