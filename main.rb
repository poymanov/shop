# encoding: utf-8

require_relative "lib/product_collection"
require_relative "lib/product"
require_relative "lib/film"
require_relative "lib/book"
require_relative "lib/disk"

current_path = File.dirname(__FILE__)

products = ProductCollection.from_dir(current_path + "/data")
products_array = products.to_a
products_size = products_array.size

product_input = nil

user_products = []
total = 0

until product_input == 0
  puts "Что хотите купить:"
  puts

  # Вывод всех доступных товаров
  products_array.each_with_index do |product, index|
    puts "#{index + 1}. #{product}"
  end

  # Вариант для завершения покупки
  puts "0. Выход"

  product_input = STDIN.gets.to_i

  # Если пользователь выбрал неверный вариант
  unless product_input.between?(0, products_size)
    next
  end

  # Завершение покупок
  if product_input == 0
    break
  end

  # Выбранный пользователем продукт
  product_choice = products_array[product_input - 1]

  puts
  puts "Вы выбрали #{product_choice}"
  puts

  total += product_choice.price

  puts "Всего товаров на сумму: #{total} руб."
  puts

  user_products << product_choice.to_s
end

puts "Вы купили:"
puts

user_products.each do |item|
  puts item
end

puts
puts "С Вас — #{total} руб. Спасибо за покупки!"