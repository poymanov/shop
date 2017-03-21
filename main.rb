# encoding: utf-8

require_relative "lib/product"
require_relative "lib/film"
require_relative "lib/book"

products = []

current_path = File.dirname(__FILE__)

leon = Film.from_file(current_path + "/data/films/01.txt")
fool = Film.from_file(current_path + "/data/films/02.txt")
idiot = Book.from_file(current_path + "/data/books/01.txt")

products << leon
products << fool
products << idiot

products.each { |product| puts product }

begin
  Product.from_file(current_path + '/data/films/01.txt')
rescue NotImplementedError
  puts 'Метод класса Product.from_file не реализован'
end
