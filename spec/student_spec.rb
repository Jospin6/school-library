require_relative '../students.rb'

describe Students do
    context "create student instance" do
        student = Students.new("jospin", "jn", 5)
        it 'should create a new instantion of student' do
            expect(student).to be_an_instance_of Students
        end 

        it 'should return the sencond name of the student' do
            expect(student.second_name).to eql("jn")  
        end
    end
end