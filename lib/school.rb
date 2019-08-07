class School
    attr_accessor :roster
    def initialize(name)
        @roster = {}
        @name = name
    end
    def add_student(student, grade)
        @roster[grade] ||= []
        @roster[grade] << student
    end
    def grade(grade)
        @roster[grade]
    end
    def sort
        sorted = {}
        @roster.each {|k,v| sorted[k] = v.sort }
        sorted
    end
end
school = School.new("Bayside High School")