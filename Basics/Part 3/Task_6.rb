# Задание 6.
# Сумма покупок.
# Пользователь вводит поочередно название товара, цену за единицу и кол-во купленного товара (может быть нецелым числом).
# Пользователь может ввести произвольное кол-во товаров до тех пор, пока не введет "стоп" в качестве названия товара.
# На основе введенных данных требуетеся:
# Заполнить и вывести на экран хеш, ключами которого являются названия товаров, а значением - вложенный хеш,
# содержащий цену за единицу товара и кол-во купленного товара. Также вывести итоговую сумму за каждый товар.
# Вычислить и вывести на экран итоговую сумму всех покупок в "корзине".

total = 0.0
purchases = Hash.new

puts "Начнем покупки."

loop do

  puts "Введите название товара:"
  product = gets.chomp

  if product == "стоп" then
    break
  end  
  
  puts "Введите цену товара:"
  product_price = gets.chomp.to_f

  puts "Введите количество товара:"
  product_quantity = gets.chomp.to_f

  purchases[product] = {price: product_price, quantity: product_quantity}

end

puts "Ваши покупки:"
purchases.each do |product, product_data|
  sub_total = product_data[:quantity] * product_data[:price]
  puts "#{product} в количестве #{product_data[:quantity]} по цене #{product_data[:price]} на сумму #{sub_total}"
  total += sub_total
end

puts "Итого: #{total}"
 
puts "До свидания! Ждем вас снова!"