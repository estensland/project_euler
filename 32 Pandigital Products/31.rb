def coin_changer_combinations(coin, coins)
  table = Array.new(coin+1){|i| Array.new(coins.length, i.zero? ? 1 : nil)}

  1.upto(coin) do |outer_num|
    coins.length.times do |inner_num|
      previous_number_combinations = table[outer_num - coins[inner_num]][inner_num] unless outer_num < coins[inner_num]

      previous_coin_combination = table[outer_num][inner_num - 1] unless inner_num < 1

      table[outer_num][inner_num] = previous_number_combinations.to_i + previous_coin_combination.to_i
    end
  end

  table[-1][-1]
end

coins = [200, 100, 50, 20, 10, 5, 2, 1]

p coin_changer_combinations(200, coins)