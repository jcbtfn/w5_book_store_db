# file: app.rb

require_relative 'lib/database_connection'
require_relative "lib/book_repository"
require_relative "lib/book"

# We need to give the database name to the method `connect`.
DatabaseConnection.connect('book_store_test')

library = BookRepository.new
p library.all.length
puts ("Book 00")
puts library.all[0].id
puts library.all[0].title
puts library.all[0].author_name
puts ("Book 01")
puts library.all[1].id
puts library.all[1].title
puts library.all[1].author_name

# library.all
# p "******"
# library.print_titles
# p "******"
# library.print_titles_using_list