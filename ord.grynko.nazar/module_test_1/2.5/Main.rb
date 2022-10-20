require_relative './Book'
require_relative './Library'

book_0 = Book.new(0, "book_0", %w[author_0 author_1], "publisher_0", 2000, 200, 100, "Soft")
book_1 = Book.new(1, "book_1", %w[author_0 author_2], "publisher_1", 1984, 350, 200, "Soft")
book_2 = Book.new(2, "book_2", ["author_1"], "publisher_1", 2002, 510, 150, "Hard")
book_3 = Book.new(3, "book_3", ["author_1"], "publisher_2", 2015, 650, 170, "Hard")
book_4 = Book.new(4, "book_4", ["author_2"], "publisher_3", 2000, 490, 200, "Soft")
book_5 = Book.new(5, "book_5", %w[author_0 author_3], "publisher_0", 2016, 500, 100, "Hard")
book_6 = Book.new(6, "book_6", ["author_3"], "publisher_3", 1880, 670, 190, "Soft")

library = Library.new

library.add_book book_0
library.add_book book_1
library.add_book book_2
library.add_book book_3
library.add_book book_4
library.add_book book_5
library.add_book book_6

author = "author_9"
publisher = "publisher_1"
year = 3345

by_author = library.get_by_author(author)
by_publisher = library.get_by_publisher(publisher)
by_year = library.get_after_year(year)

if by_author == nil
  puts "There no books with author #{author}"
else
  puts "Books by author #{author}"
  by_author.each do |book|
    puts book.to_string
  end
end

if by_publisher == nil
  puts "There no books with publisher #{publisher}"
else
  puts "Books by publisher #{publisher}"
  by_publisher.each do |book|
    puts book.to_string
  end
end

if by_year == nil
  puts "There no books with year greater than #{year}"
else
  puts "Books with year greater than #{year}"
  by_year.each do |book|
    puts book.to_string
  end
end