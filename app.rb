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
            puts "ID #{book.id}, book title: #{book.title}, author: #{book.author}, published year #{book.published_year}"
        end
    end

    def list_students
        puts "Ours students"
        @students.each do |student|
           puts "ID #{student.id}, name: #{student.name}, last name: #{student.second_name}, degree: #{student.degree}" 
        end
    end
    
    def list_borrows
        puts "All borrows"
        @borrow.each do |borrow|
            puts "N° #{borrow.id}, book ID: #{borrow.book_id}, student ID: #{borrow.student_id}, loan date: #{borrow.borrow_date}, due date: #{borrow.return_date}"
        end
    end
    
    
end