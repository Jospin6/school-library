require 'json'
require_relative './books'
require_relative './borrow'
require_relative './students'

require_relative './modules/book_module'
require_relative './modules/borrow_module'
require_relative './modules/student_module'

class App
    def initialize
      @books = load_books
      @students = load_students
      @borrow = load_borrows
    end

    def list_all_books
        puts "All of our Books"
        @books.each do |book|
            puts "Book title: #{book.title}, author: #{book.author}, published year #{book.published_year}"
        end
    end
    
end