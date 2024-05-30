require 'json'
require_relative '../books'

module BookModule
    def load_books
        file = '../data_files/books.json'
        data = []
        if File.exist?(file) && File.read(file) != ''
            JSON.parse(File.read(file)).each do |element|
                data.push(Books.new(element['title'], element['author'], element['published_year'], element['isAvailable']))
            end
        end
        data
    end
    
    def save_book
        data = []
    end
    
end