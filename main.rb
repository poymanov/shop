# encoding: utf-8

require_relative "lib/product"
require_relative "lib/film"
require_relative "lib/book"

film = Product.new(price: 500, amount: 3)

puts "Фильм Леон стоит #{film.price}"