require 'json'
require_relative '../borrow'

module BorrowModule
    def load_borrows
        file = './data_files/borrows.json'
        data = []
        if File.exist?(file) && File.read(file) != ''
            JSON.parse(File.read(file)).each do |borrow|
                data.push(Borrow.new(borrow['book_id'], borrow['student_id'], borrow['borrow_date'], borrow['return_date']))
            end
        else
            File.write(file, [])
        end
        data
    end

    def save_borrow
        data = []
        @borrow.each do |element|
            data.push({id: element.id, book_id: element.book_id, student_id: element.student_id, borrow_date: element.borrow_date, return_date: element.return_date})
        end
        File.write('./data_files/borrows.json', JSON.generate(data))
    end
    
    
end