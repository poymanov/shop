class Product
  attr_reader :name, :price

  def initialize(params)
    @price = params[:price]
    @amount = params[:amount]
  end
end