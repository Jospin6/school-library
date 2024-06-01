
class Students
    attr_accessor :name, :second_name, :degree
    attr_reader :id
    
    def initialize(name, second_name, degree)
        @id = rand(1..1000)
        @name = name
        @second_name = second_name
        @degree = degree
    end
end