require 'json'
require_relative '../students'

module StudentModule
    def load_students
        file = '../data_files/students.json'
        data = []
        if File.exist?(file) && File.read(file) != ''
            JSON.parse(File.read(file)).each do |student|
                data.push(Students.new(student['name'], student['second_name'], student['degree']))
            end
        else
            File.write(file, [])
        end
        data
    end
    
    def save_student
        data = []
        @student.each do |element|
            data.push({id: element.id, name: element.name, second_name: element.second_name, degree: element.degree})
        end
        File.write('../data_files/students.json', JSON.generate(data))
    end
    

end