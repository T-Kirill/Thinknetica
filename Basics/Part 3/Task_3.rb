# Задание 3.
# Заполнить массив числами фибоначчи до 100.

fibonacci_sequence = []

a = 0
b = 1

while a <= 100 do
  fibonacci_sequence.push(a + b)
  a = b 
  b = fibonacci_sequence.last  
end