class Book < Product
  attr_accessor :name, :genre, :author

  def initialize(params)
    super(params)

    @name = params[:name]
    @genre = params[:genre]
    @author = params[:author]
  end

  def to_s
    "#{@name}, #{@genre}, автор - #{@author}, #{super}"
  end

  def self.from_file(file_path)
    begin
      book = File.readlines(file_path, encoding: "UTF-8").map { |b| b.chomp }

      self.new(
        name: book[0].chomp,
        genre: book[1].chomp,
        author: book[2].chomp,
        price: book[3].to_i,
        amount: book[4].to_i
      )
    rescue Errno::ENOENT
       abort "Не найден файл для загрузки"
    end
  end
end