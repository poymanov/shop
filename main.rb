# encoding: utf-8

require_relative "lib/product"
require_relative "lib/film"
require_relative "lib/book"

user_choice = nil

products = []

until user_choice == 3
  puts
  puts "Какой товар добавить?"
  puts "1 - книгу"
  puts "2 - фильм"
  puts "3 - никакой"

  user_choice = STDIN.gets.to_i

  if user_choice == 3
    next
  end

  puts
  puts "Название товара?"
  name = STDIN.gets.chomp

  puts
  puts "Стоимость?"
  price = STDIN.gets.to_f

  puts
  puts "Количество на складе?"
  qty = STDIN.gets.to_i

  if user_choice == 1
    classname = Book
  else
    user_choice == 2
    classname = Film
  end

  products << classname.new({
                             name: name,
                             price: price,
                             qty: qty
                           })

end

puts

products.each do | item |
  puts "#{item.name} стоит #{item.price} руб"
end