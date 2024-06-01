require 'json'
require_relative '../students'

module StudentModule
    def load_students
        file = '../data_file/students.json'
        data = []
        if File.exist?(file) && File.read(file) != ''
            JSON.parse(File.read(file)).each do |student|
                data.push(Students.new(student['name'], student['second_name'], student['degree']))
            end
        end
        data
    end
    
end