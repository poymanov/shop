# encoding: utf-8

require_relative "lib/product"
require_relative "lib/film"
require_relative "lib/book"

products = []

leon = Film.new(
  name: "Фильм «Леон»",
  year: 1994,
  director: "Люк Бессон",
  price: 990,
  amount: 5
)

fool = Film.new(
  name: "Фильм «Дурак»",
  year: 2014,
  director: "Юрий Быков",
  price: 390,
  amount: 1
)

idiot = Book.new(
  name: "Книга «Идиот»",
  genre: "роман",
  author: "Федор Достоевский",
  price: 1500,
  amount: 10
)

products << leon
products << fool
products << idiot

products.each { |product| puts product }
