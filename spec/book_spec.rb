require_relative '../books'

describe Books do
    context "it should create a book and add the title, author, published year and availability" do
       book = Books.new('gemini', 'jn', '2023', true)
       it 'create new book with the given parameter' do
            expect(book).to be_an_instance_of Books  
       end
       it 'should return the book title' do
            expect(book.title).to eql("gemini")  
       end
    end
end