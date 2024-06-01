require 'json'
require_relative '../books'

module BookModule
    def load_books
        file = './data_files/books.json'
        data = []
        if File.exist?(file) && File.read(file) != ''
            JSON.parse(File.read(file)).each do |element|
                data.push(Books.new(element['title'], element['author'], element['published_year'], element['isAvailable']))
            end
        else
            File.write(file, [])
        end
        data
    end
    
    def save_book
        data = []
        @books.each do |book|
            data.push({id: book.id, title: book.title, published_year: book.published_year, isAvailable: book.isAvailable})
        end
        File.write('./data_files/books.json', JSON.generate(data))
    end
    
end