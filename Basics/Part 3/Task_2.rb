# Задание 2.
# Заполнить массив числами от 10 до 100 с шагом 5.

array_of_numbers = []
number = 10
while number <= 100 do
  puts "Number = #{number}"
  array_of_numbers.push(number)
  number += 5
end