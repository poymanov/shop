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
end