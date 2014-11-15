low = 2
high = 100

nums = (low..high).to_a

store = [ ]

nums.each do |a|
  nums.each do |b|
    store << a ** b
  end
end

store = store.uniq.sort!
p store.length