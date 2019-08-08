require 'pry'
class School
   
    attr_reader :roster, :school_name

    def initialize (school_name)
        @school_name = school_name
        @roster = {}
    end

    def add_student (name, grade)
        if @roster.none? {|key, value| key == grade}
            @roster[grade] = []
        end 
        @roster[grade] << name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        binding.pry
        sorted = {}
        @roster.map {|grade, students| sorted[grade] = students.sort }
        binding.pry
        return sorted
    end

end# code here!