require_relative '../borrow'

describe Borrow do
    context "it should create an instanxce of borrow" do
        borrow = Borrow.new(4, 7, "12/05/2024", "12/06/2024")
        it 'should return an instance of borrow' do
            expect(borrow).to be_an_instance_of Borrow  
        end
    end
    
end
