require_relative 'item' # => Dreate Path

class Book < Item

#  @@num_books_total = 0

  def read
    "#{title}: It was a dark and stormy night..." # => Returns variables
  end
end
