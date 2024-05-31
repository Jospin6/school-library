require 'json'
require_relative '../borrow'

module BorrowModule
    def load_borrows
        file = '../data_files/borrows.json'
        data = []
        if File.exist?(file) && File.read(file) != ''
            JSON.parse(File.read(file)).each do |borrow|
                data.push(Borrow.new(borrow['book_id'], borrow['student_id'], borrow['borrow_date'], borrow['return_date']))
            end
        end
        data
    end
    
end