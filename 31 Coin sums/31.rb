coins = [1, 2, 5, 10, 20, 50, 100, 200]
to_get = 200
combos = []
coin_count = coins.length

counts = {}

coins.each do |coin|
  counts[coin] = to_get / coin
end

coins.each_with_index do |coin, index|

  combos << {coin: to_get / coin}

  (index..(coin_count - 1)).each do |number|
    

  end


end
