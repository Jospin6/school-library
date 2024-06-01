require 'json'
require_relative './books'
require_relative './borrow'
require_relative './students'

require_relative './modules/book_module'
require_relative './modules/borrow_module'
require_relative './modules/student_module'

class App

    include BookModule
    include StudentModule
    include BorrowModule

    def initialize
      @books = load_books
      @students = load_students
      @borrow = load_borrows
    end

    def get_options(option)
        case option
        when '1'
            list_all_books
        when '2'
            list_students
        when '3'
            list_borrows
        when '4'
            add_book
        when '5'
            add_student
        when '6'
            add_loan
        else
            puts 'Please, Enter a number between 1 and 6' 
        end
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
    
    def add_book
        puts "Add new Book to the store"

        print "Please, type the book title: "
        title = gets.chomp

        print 'Please, type the book author: '
        author = gets.chomp

        print 'Please, type the book published year [Enter date in format (yyyy-mm-dd)]: '
        published_year = gets.chomp

        isAvailable = true

        @books.push(Books.new(title, author, published_year, isAvailable))

        puts "New book added successfully"
    end
    
    def add_student
        puts "Add new Student"

        print "Please, type the student name: "
        name = gets.chomp

        print "Please, type the student last name: "
        second_name = gets.chomp

        print "Please, type the student degree: "
        degree = gets.chomp

        @students.push(Students.new(name, second_name, degree))

        puts "New Student added successfully"
    end
    
    def add_loan
        puts "Add new Loan"

        print "Please, type the book ID: "
        book_id = gets.chomp

        print "Please, type the Student ID: "
        student_id = gets.chomp

        print "Please, type the loan date: "
        borrow_date = gets.chomp

        print "Please, type the due date: "
        return_id = gets.chomp

        @borrow.push(Borrow.new(book_id, student_id, borrow_date, return_id))

        puts "New Loan added successfully"
    end 
end