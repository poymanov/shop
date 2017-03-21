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
end