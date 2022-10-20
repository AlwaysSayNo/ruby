class Book
  def initialize(id, name, authors, publisher, year, page_amount, price, type)
    @id = id
    @name = name
    @authors = authors
    @publisher = publisher
    @year = year
    @page_amount = page_amount
    @price = price
    @type = type
  end

  def to_string
    "id: #{id}, name: #{name}, authors: #{authors}, publisher: #{publisher}, year: #{year}, page_amount: #{page_amount}, price: #{price}, type: #{type}"
  end

  attr_reader :id, :name, :authors, :publisher, :year, :page_amount, :price, :type
end
