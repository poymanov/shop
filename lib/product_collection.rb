class ProductCollection
  def initialize(params)
    @products = params[:products]
  end

  # Создание товаров из директории
  def self.from_dir(dir_path)
    products = []

    Dir.new(dir_path).each do |path|
      # Создание объектов
      if path == "films"
        classname = Film
      elsif path == "books"
        classname = Book
      elsif path == "disk"
        classname = Disk
      else
        next
      end

      Dir[dir_path + "/" + path + "/*.txt"].each do |file_path|
        products << classname.from_file(file_path)
      end

    end

    self.new(products: products)
  end

  # Возврат массива товаров
  def to_a
    @products
  end

  # Сортировка товаров
  def sort!(param)

    # По цене
    case param[:by]
    when :price
      @products.sort_by! { |product| product.price }
    when :amount
      @products.sort_by! { |product| product.amount }
    when :name
      @products.sort_by! { |product| product.to_s }
    end

    @products.reverse! if param[:order] == :asc

    self
  end
end