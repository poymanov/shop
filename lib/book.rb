class Book < Product
  def initialize(params)
    super(params)

    @name = params[:name]
    @genre = params[:genre]
    @author = params[:author]
  end

  def to_s
    "#{@name}, #{@genre}, автор - #{@author}, #{super}"
  end
end