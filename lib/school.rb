# code here!
class School 
    attr_accessor :roster

    def initialize(new_name)
        @roster = {}
    end

    def add_student(new_name, new_grade)
        @roster[new_grade] ||= []
        @roster[new_grade] << new_name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted_hash = {}
        @roster.each do |grade, student|
            sorted_hash[grade] = student.sort
        end
        sorted_hash
    end
    
end