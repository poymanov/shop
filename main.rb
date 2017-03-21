# encoding: utf-8

require_relative "lib/product_collection"
require_relative "lib/product"
require_relative "lib/film"
require_relative "lib/book"
require_relative "lib/disk"

products = []

current_path = File.dirname(__FILE__)

products = ProductCollection.from_dir(current_path + "/data")

# Сортировки
# по цене
products.sort!(by: :price)

# по остатку
products.sort!(by: :amount)

# по наименованию (возрастание)
products.sort!(by: :name_asc)

# по наименованию (убывание)
products.sort!(by: :name_desc, order: :asc)

puts products.to_a