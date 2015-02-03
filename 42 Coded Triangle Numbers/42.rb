def letter_value(letter, alpha_count)

end

def triangle_value(word, alpha_count)
  value = 0

  word.split(',').each do |letter|
    value += letter_value(letter)
  end
  value
end

def triangle_number?(num)
  i = 1
  n = 2
  until num == i || i > num
    i += n
    n += 1
  end
  num == i ? true : false
end

def triangle_word?(word)
  score = 0
  word.gsub!(/"|\\/, '').split('').each do |letter|
    score += @alpha_count[letter.capitalize]
  end

  triangle_number?(score)
end


x = ''

File.open("p042_words.txt", 'r').each do |line|
  x = line
end

dictionary = x.split(',')

@alpha_count = {}

count = 0

('A'..'Z').to_a.each do |letter|
  @alpha_count[letter] = (count += 1)
end

a= []

dictionary.each do |word|
  a << word if triangle_word?(word)
end

puts a.count