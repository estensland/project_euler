# NEEDS WORK 

def number_check(coin, coins, total)
  @counter -= 1
  raise if @counter < 2
  p [coin, coins, total]
  if total < 1
    return 1 
  end

  coins_dup = coins.dup
  coins_dup.shift
  coins_dup.each do |coinette|
    number_check(coin, coins_dup, total -= coin)
  end
end

coins = [200, 100, 50, 20, 10, 5, 2, 1]
to_get = 200

@counter = 100

total = to_get

coins.each_with_index do |coin, index|
   number_check(coin, coins, total)
end


# p counter