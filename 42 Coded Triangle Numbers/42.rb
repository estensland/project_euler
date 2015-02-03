def letter_value(letter, alpha_count)

end

def triangle_value(word, alpha_count)
  value = 0

  word.split(',').each do |letter|
    value += letter_value(letter)
  end
  value
end

def triangle_word?

end

x = ''

File.open("p042_words.txt", 'r').each do |line|
  x = line
end

dictionary = x.split(',')

alpha_count = {}

count = 0

('A'..'Z').to_a.each do |letter|
  alpha_count[letter] = (count += 1)
end

dictionary.each do |word|
  triangle_word(word)
end