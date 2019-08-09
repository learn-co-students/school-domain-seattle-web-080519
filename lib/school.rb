# code here!
class School
    
    attr_accessor :roster
    attr_writer :name

    def initialize(name)
        @roster= {}
        @name = name
    end
    
    def add_student(studentName, grade)
        if @roster[grade] == nil
            @roster[grade] = []
        end
        
        @roster[grade] << studentName
    end

    def grade(gradeStudentsAreIn)
        @roster[gradeStudentsAreIn]
    end

    def sort
        sortedRoster = {}
        @roster.each do |grade, studentNames|
            sortedRoster[grade] = studentNames.sort { |a,b| a<=>b }
        end
        sortedRoster
    end


end

