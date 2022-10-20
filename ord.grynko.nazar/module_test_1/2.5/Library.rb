class Library

  def initialize
    @books = []
    @books_by_authors = Hash.new([])
    @books_by_publishers = Hash.new([])
    @books_by_years = Hash.new([])
  end

  def add_book(book)
    @books.append(book)
    add_to_authors(book)
    add_to_publishers(book)
    add_to_years(book)
  end

  def get_by_author(author)
    books = @books_by_authors[author]

    if books.length == 0
      return nil
    end

    books
  end

  def get_by_publisher(publisher)
    books = @books_by_publishers[publisher]

    if books.length == 0
      return nil
    end

    books
  end

  def get_after_year(year)
    books = []

    @books_by_years.keys.each do |y|
      if y > year
        books = books.concat(@books_by_years[y])
      end
    end

    if books.length == 0
      return nil
    end

    books
  end

  private

  def add_to_authors(book)
    book.authors.each do |author|
      unless @books_by_authors.key? author
        @books_by_authors[author] = []
      end
      @books_by_authors[author] = @books_by_authors[author].append(book)
    end
  end

  def add_to_publishers(book)
    publisher = book.publisher
    unless @books_by_publishers.key? publisher
      @books_by_publishers[publisher] = []
    end
    @books_by_publishers[publisher] = @books_by_publishers[publisher].push(book)
  end

  def add_to_years(book)
    year = book.year
    unless @books_by_years.key? year
      @books_by_years[year] = []
    end
    @books_by_years[year] = @books_by_years[year].push(book)
  end

end

