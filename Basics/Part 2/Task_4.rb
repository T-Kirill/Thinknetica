# Задание 4.
# Квадратное уравнение.
# Пользователь вводит 3 коэффициента a, b и с. Программа вычисляет дискриминант (D) и корни уравнения
# (x1 и x2, если они есть) и выводит значения дискриминанта и корней на экран. При этом возможны следующие варианты:
#  Если D > 0, то выводим дискриминант и 2 корня
#  Если D = 0, то выводим дискриминант и 1 корень (т.к. корни в этом случае равны)
#  Если D < 0, то выводим дискриминант и сообщение "Корней нет"
# Подсказка: Алгоритм решения с блок-схемой (www.bolshoyvopros.ru). Для вычисления квадратного корня, нужно использовать  
# Math.sqrt.

print "Введите коэффициент a:"
a = gets.to_f
print "Введите коэффициент b:"
b = gets.to_f
print "Введите коэффициент c:"
c = gets.to_f

D = b**2 - 4*a*c
puts "Дискриминант равен #{D}."

if D > 0
    puts "Корень 1 = #{(-b + Math.sqrt(D)) / (2*a)}"
    puts "Корень 2 = #{(-b - Math.sqrt(D)) / (2*a)}"
elsif D == 0
    puts "Оба корня равны #{-(b/2*a)}"
elsif D < 0
    puts "Корней нет."
end
