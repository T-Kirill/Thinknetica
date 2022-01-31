# Задание 3.
# Прямоугольный треугольник.
# Программа запрашивает у пользователя 3 стороны треугольника и определяет, является ли треугольник прямоугольным
# (используя теорему Пифагора www-formula.ru), равнобедренным (т.е. у него равны любые 2 стороны)
# или равносторонним (все 3 стороны равны) и выводит результат на экран.
# Подсказка: чтобы воспользоваться теоремой Пифагора, нужно сначала найти самую длинную сторону (гипотенуза)
# и сравнить ее значение в квадрате с суммой квадратов двух остальных сторон.
# Если все 3 стороны равны, то треугольник равнобедренный и равносторонний, но не прямоугольный.

print "Введите сторону a:"
a = gets.to_f

print "Введите сторону b:"
b = gets.to_f

print "Введите сторону c:"
c = gets.to_f

triangle_sides = [a,b,c]
triangle_sides.sort!

preamble = "Экспертиза установила: ваш треугольник - "

if a.eql?(b) && a.eql?(c)
  puts preamble + "равносторонний!"
elsif (a == b) || (a == c) || (b == c)
  puts preamble + "равнобедренный!"
elsif triangle_sides.last**2 == triangle_sides[0]**2 + triangle_sides[1]**2
  puts preamble + "прямоугольный!"
end