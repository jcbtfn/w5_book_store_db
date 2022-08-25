class BookRepository

    def all
        sql = 'SELECT * FROM books;' #id, title
        result = DatabaseConnection.exec_params(sql, [])
        @my_library = []
        result.each do |book|
            booksample = Book.new
            booksample.id = book["id"]
            booksample.title = book["title"]
            booksample.author_name = book["author_name"]
            @my_library << booksample
        end
        return @my_library
    end

    def print_titles
        sql = 'SELECT title FROM books;' #id, title
        result = DatabaseConnection.exec_params(sql, [])
        @titles = []
        count = 0
        result.each do |book|
            count += 1
            puts "[DB] Book 0#{count}: #{book["title"]}"
            @titles << book["title"]
        end
        return @titles
    end

    def print_titles_using_list
        count = 0
        @my_library.each_index do |index|
            count += 1
            puts "[List] Book 0#{(index+1).to_s}: #{@my_library[index].title}"
        end
    end

end