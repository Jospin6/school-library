
class Books
    attr_accessor :title, :author, :published_year, :isAvailable

    def initialize(title, author, published_year, isAvailable)
        @id = rand(0..1000)
        @title = title
        @author = author
        @published_year = published_year
        @isAvailable = isAvailable
    end
    

end