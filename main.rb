require_relative './app'

class Main
    def initialize
        @app = App.new
    end

    def run
        puts '*************SCHOOL LIBRARY************'
        puts '             =======================          '
        puts 'Welcome to our school library!'
        loop do
          menu
          option = gets.chomp
          break if option == '7'
    
          @app.get_options option
        end
        @app.save_book
        @app.save_student
        @app.create_borrow
        puts 'Thank you for using our Library!'
    end

    def menu
        puts
        puts 'Please choose an option by entering a number'
        puts '1 - List all books'
        puts '2 - List all students'
        puts '3 - List all loans'
        puts '4 - Add new book'
        puts '5 - Add new student'
        puts '6 - Add new loan'
        puts '7 - Exit'
    end
end

execute_app = Main.new
execute_app.run 