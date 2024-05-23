class Borrow
    attr_accessor :book_id, :student_id, :borrow_date, :return_date
    def initialize(book_id, student_id, borrow_date, return_date)
        @id = rand(1..1000)
        @book_id = book_id
        @student_id = student_id
        @borrow_date = borrow_date
        @return_date = return_date
    end
end