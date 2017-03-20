class Product
  attr_reader :name, :price

  def initialize(params)
    @name = params[:name]
    @price = params[:price]
    @qty = params[:qty] || 0
  end
end