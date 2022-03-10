# Задание 4.
# Заполнить хеш гласными буквами, где значением будет являться
# порядковый номер буквы в алфавите (a - 1).

letter_position = 1
vowels = ["а","е","и","о","у","ы","э","ю","я"]
summary_hash = {}

('а'..'я').each do |letter|
  if vowels.include?(letter)
    summary_hash[letter] = letter_position
  end
  letter_position += 1
end