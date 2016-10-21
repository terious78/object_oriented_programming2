require_relative 'book'
require_relative 'music'

hp1 = Book.new('Harry Potter 1') # => call the new method to create instence in Book
hp2 = Book.new('Harry Potter 2')
b5  = Music.new("Beethoven's 5th")

#puts hp1.read
#puts b5.play

puts "The library has #{Item.num_total} items total." # => Call from Item class
puts "The library has #{Item.num_checked_out} items total."
#puts "The library has #{Book.num_books_total} books."
#puts "The library has #{Music.num_musics_total} musics."
hp1.checked_out
puts "The library has #{Item.num_total} items total."
puts "The library has #{Item.num_checked_out} items total."
