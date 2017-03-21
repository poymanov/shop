class Film < Product
  attr_accessor :name, :year, :director

  def initialize(params)
    super(params)

    @name = params[:name]
    @year = params[:year]
    @director = params[:director]
  end

  def to_s
    "#{@name}, #{@year}, реж. #{@director}, #{super}"
  end

  def self.from_file(file_path)
    begin
      film = File.readlines(file_path, encoding: "UTF-8").map { |f| f.chomp }

      self.new(
        name: film[0],
        director: film[1],
        year: film[2].to_i,
        price: film[3].to_i,
        amount: film[4].to_i
      )
    rescue Errno::ENOENT
      abort "Не найден файл для загрузки"
    end
  end

  def update(params)
    super

    @title = params[:title] if params[:title]
    @year = params[:year] if params[:year]
    @director = params[:director] if params[:director]
  end
end