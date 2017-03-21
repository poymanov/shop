class Disk < Product
  attr_accessor :name, :artist, :year, :genre

  def initialize(params)
    super(params)

    @name = params[:name]
    @year = params[:year]
    @artist = params[:artist]
    @genre = params[:genre]
  end

  def to_s
    "#{@name}, #{@genre}, #{@year}, исполнитель - #{@artist}, #{super}"
  end

  def self.from_file(file_path)
    begin
      disk = File.readlines(file_path, encoding: "UTF-8").map { |d| d.chomp }

      self.new(
        name: disk[0],
        artist: disk[1],
        genre: disk[2],
        year: disk[3].to_i,
        price: disk[4].to_i,
        amount: disk[5].to_i
      )
    rescue Errno::ENOENT
      abort "Не найден файл для загрузки"
    end
  end

  def update(params)
    super

    @name = params[:name] if params[:name]
    @artist = params[:artist] if params[:artist]
    @genre = params[:genre] if params[:genre]
    @year = params[:year] if params[:year]
  end
end