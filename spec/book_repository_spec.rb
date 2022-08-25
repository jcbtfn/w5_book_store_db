# file: spec/book_repository_spec.rb
require "book_repository"
require "book"

def reset_books_table
    seed_sql = File.read('../databases/resources/seeds/book_store.sql')
    connection = PG.connect({ host: '127.0.0.1', dbname: 'book_store_test' })
    connection.exec(seed_sql)
end

describe BookRepository do
    before(:each) do 
        reset_books_table
    end

    # (your tests will go here).

    it "# Return the number of books in the book repository (5)" do
        auxlibrary = BookRepository.new
        expect(auxlibrary.all.length).to eq 5
    end

    it "#Return information from Book 1 Nineteen Eighty-Four George Orwell" do
        auxlibrary = BookRepository.new
        expect(auxlibrary.all.length).to eq 5
        expect(auxlibrary.all[0].id).to eq "1"
        expect(auxlibrary.all[0].title).to eq "Nineteen Eighty-Four"
        expect(auxlibrary.all[0].author_name).to eq "George Orwell"
    end

    it "#Return information from Book 2 Mrs Dalloway Virginia Woolf" do
        auxlibrary = BookRepository.new
        expect(auxlibrary.all.length).to eq 5
        expect(auxlibrary.all[1].id).to eq "2"
        expect(auxlibrary.all[1].title).to eq "Mrs Dalloway"
        expect(auxlibrary.all[1].author_name).to eq "Virginia Woolf"
    end
    
end