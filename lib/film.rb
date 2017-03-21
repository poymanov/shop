class Film < Product
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